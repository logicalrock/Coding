'''
What It Does:
os.walk() is used to walk the entire directory tree.

open(..., errors='ignore') safely reads files even if they have encoding issues.

A Python set is used to track unique characters.

Characters are written out in sorted order for clarity.
'''
'''
To Test:
Put the script in any folder, and run it:
<python3 build_charset.py>

It will generate charset.txt in the same directory with all unique characters it found.
'''
import os

def build_charset_from_directory(start_path, output_file='charset.txt'):
    charset = set()

    for dirpath, _, filenames in os.walk(start_path):
        for filename in filenames:
            file_path = os.path.join(dirpath, filename)
            try:
                with open(file_path, 'r', encoding='utf-8', errors='ignore') as file:
                    content = file.read()
                    charset.update(content)
            except Exception as e:
                print(f"Could not read {file_path}: {e}")

    # Sort characters for readability
    sorted_charset = sorted(charset)

    # Save to output file
    with open(output_file, 'w', encoding='utf-8') as out_file:
        for char in sorted_charset:
            out_file.write(char)

    print(f"Character set written to: {output_file}")
    print(f"Total unique characters: {len(sorted_charset)}")

# Example usage
if __name__ == "__main__":
    build_charset_from_directory(".")
