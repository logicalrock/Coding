import os
import re
import yaml

def fix_indents(path, dry_run=False):
    '''
    Normalize YAML/SLS indentation to 2 spaces in the given directory.

    path : str
        Root path to recursively scan for .sls, .yaml, or .yml files
    dry_run : bool
        If True, only report what would change without modifying files

    CLI Example:
        salt '*' yamlfixer.fix_indents path=/srv/salt/netbox dry_run=True
    '''
    if not os.path.exists(path):
        return {'error': f'Path does not exist: {path}'}

    log = []
    total_files = 0
    modified_files = 0
    error_files = 0

    for dirpath, _, filenames in os.walk(path):
        for file in filenames:
            if file.endswith(('.sls', '.yaml', '.yml')):
                total_files += 1
                full_path = os.path.join(dirpath, file)
                try:
                    with open(full_path, 'r') as f:
                        lines = f.readlines()

                    fixed_lines = []
                    changed = False
                    for line in lines:
                        original = line
                        line = line.replace('\t', '  ')
                        if re.match(r'^\s+', line):
                            leading = len(line) - len(line.lstrip())
                            new_indent = ' ' * (leading // 2 * 2)
                            line = new_indent + line.lstrip()
                        if line != original:
                            changed = True
                        fixed_lines.append(line)

                    # YAML validation
                    try:
                        yaml.safe_load(''.join(fixed_lines))
                    except Exception as e:
                        error_files += 1
                        log.append(f"[ERROR] {full_path} failed YAML validation: {e}")
                        continue

                    if changed:
                        if not dry_run:
                            with open(full_path, 'w') as f:
                                f.writelines(fixed_lines)
                        modified_files += 1
                        log.append(f"[MODIFIED] {full_path}")
                    else:
                        log.append(f"[OK] {full_path} (no changes)")

                except Exception as e:
                    error_files += 1
                    log.append(f"[FAIL] Could not process {full_path}: {e}")

    return {
        'summary': {
            'total_files': total_files,
            'modified_files': modified_files,
            'error_files': error_files,
        },
        'log': log
    }