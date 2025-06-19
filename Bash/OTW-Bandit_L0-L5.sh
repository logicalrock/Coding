Over the wire: Bandit Levels 0-5

ssh bandit0@bandit.labs.overthewire.org -p 2220

bandit0

cat readme
--> boJ9jbbUNNfktd78OOpsqOltutMc3MY1

bandit1

ssh bandit1@bandit.labs.overthewire.org -p 2220

cat ./-
--> CV1DtqXWVFXTvM2F0k09SHz0YwRINYA9

bandit2

ssh bandit2@bandit.labs.overthewire.org -p 2220

cat "spaces in this filename"
--> UmHadQclWmgdLOKQ3YNgjWxGoRMb5luK

bandit3

ssh bandit3@bandit.labs.overthewire.org -p 2220

bandit3@bandit:~/inhere$ cat .hidden
--> pIwrPrtPN36QITSp3EQaw936yaFoFgAB

bandit4

ssh bandit4@bandit.labs.overthewire.org -p 2220

bandit4@bandit:~/inhere$ file ./-file*
./-file00: data
./-file01: data
./-file02: data
./-file03: data
./-file04: data
./-file05: data
./-file06: data
./-file07: ASCII text
./-file08: data
./-file09: data
bandit4@bandit:~/inhere$ cat ./-file07
--> koReBOKuIDDepwhWk7jZC0RTdopnAYKh

bandit5

ssh bandit5@bandit.labs.overthewire.org -p 2220

bandit5@bandit:~$ find ./ -type f -size 1033c ! -executable
./inhere/maybehere07/.file2

bandit5@bandit:~$ cat ./inhere/maybehere07/.file2
--> DXjZPULLxYr17uwoI01bNLQbtFemEgo7

bandit6

{{{
bandit6@bandit:~$ find / | grep password
	find: ‘/root’: Permission denied
	find: ‘/home/bandit28-git’: Permission denied
	find: ‘/home/bandit30-git’: Permission denied
	find: ‘/home/bandit5/inhere’: Permission denied
	find: ‘/home/bandit27-git’: Permission denied
	/home/bandit25/.bandit24.password
	/home/bandit15/.bandit14.password
	/home/bandit16/.bandit15.password
	find: ‘/home/bandit29-git’: Permission denied
	find: ‘/home/bandit31-git’: Permission denied
	/home/bandit17/passwords.old
	/home/bandit17/.bandit16.password
	/home/bandit17/passwords.new
	find: ‘/lost+found’: Permission denied
	/etc/pam.d/common-password
	find: ‘/etc/ssl/private’: Permission denied
	find: ‘/etc/polkit-1/localauthority’: Permission denied
	find: ‘/etc/lvm/archive’: Permission denied
	find: ‘/etc/lvm/backup’: Permission denied
	find: ‘/sys/fs/pstore’: Permission denied
	find: ‘/proc/tty/driver’: Permission denied
	find: ‘/cgroup2/csessions’: Permission denied
	/usr/include/glib-2.0/gio/gtlspassword.h
	/usr/share/man/man3/pem_password_cb.3ssl.gz
	/usr/share/pam/common-password
	/usr/share/pam/common-password.md5sums
	/usr/share/nmap/scripts/http-domino-enum-passwords.nse
	/usr/share/nmap/scripts/mysql-empty-password.nse
	/usr/share/nmap/scripts/ms-sql-empty-password.nse
	/usr/share/nmap/nselib/data/passwords.lst
	/usr/lib/grub/i386-pc/password_pbkdf2.mod
	/usr/lib/grub/i386-pc/password.mod
	/usr/lib/grub/i386-pc/legacy_password_test.mod
	/usr/src/radare2/shlr/zip/zip/zip_set_default_password.c
	/usr/src/radare2/shlr/zip/zip/zip_set_default_password.d
	/usr/src/radare2/shlr/zip/zip/zip_set_default_password.o
	find: ‘/boot/lost+found’: Permission denied
	/boot/grub/i386-pc/password.mod
	/boot/grub/i386-pc/legacy_password_test.mod
	find: ‘/tmp’: Permission denied
	/boot/grub/i386-pc/password_pbkdf2.mod
	find: ‘/run/lvm’: Permission denied
	find: ‘/run/screen/S-bandit0’: Permission denied
	find: ‘/run/screen/S-bandit29’: Permission denied
	find: ‘/run/screen/S-bandit1’: Permission denied
	find: ‘/run/screen/S-bandit10’: Permission denied
	find: ‘/run/screen/S-bandit25’: Permission denied
	find: ‘/run/screen/S-bandit30’: Permission denied
	find: ‘/run/screen/S-bandit9’: Permission denied
	find: ‘/run/screen/S-bandit28’: Permission denied
	find: ‘/run/screen/S-bandit18’: Permission denied
	find: ‘/run/screen/S-bandit20’: Permission denied
	find: ‘/run/screen/S-bandit5’: Permission denied
	find: ‘/run/screen/S-bandit7’: Permission denied
	find: ‘/run/screen/S-bandit16’: Permission denied
	find: ‘/run/screen/S-bandit26’: Permission denied
	find: ‘/run/screen/S-bandit8’: Permission denied
	find: ‘/run/screen/S-bandit15’: Permission denied
	find: ‘/run/screen/S-bandit4’: Permission denied
	find: ‘/run/screen/S-bandit3’: Permission denied
	find: ‘/run/screen/S-bandit19’: Permission denied
	find: ‘/run/screen/S-bandit31’: Permission denied
	find: ‘/run/screen/S-bandit17’: Permission denied
	find: ‘/run/screen/S-bandit2’: Permission denied
	find: ‘/run/screen/S-bandit22’: Permission denied
	find: ‘/run/screen/S-bandit21’: Permission denied
	find: ‘/run/screen/S-bandit14’: Permission denied
	find: ‘/run/screen/S-bandit13’: Permission denied
	find: ‘/run/screen/S-bandit24’: Permission denied
	find: ‘/run/screen/S-bandit23’: Permission denied
	find: ‘/run/shm’: Permission denied
	find: ‘/run/lock/lvm’: Permission denied
	/run/lock/password26.txt
	find: ‘/var/spool/bandit24’: Permission denied
	find: ‘/var/spool/cron/crontabs’: Permission denied
	find: ‘/var/spool/rsyslog’: Permission denied
	find: ‘/var/tmp’: Permission denied
	find: ‘/var/lib/apt/lists/partial’: Permission denied
	find: ‘/var/lib/polkit-1’: Permission denied
	/var/lib/pam/password
-->	
	/var/lib/dpkg/info/bandit7.password
-->	
	find: ‘/var/log’: Permission denied
	find: ‘/var/cache/apt/archives/partial’: Permission denied
	/var/cache/debconf/passwords.dat
	find: ‘/var/cache/ldconfig’: Permission denied
	bandit6@bandit:~$ cd /var/lib/dpkg/info/
	bandit6@bandit:/var/lib/dpkg/info$ cat bandit7.password
	HKBPTKQnIay4Fw76bEy8PVxKEDQRKTzs
	bandit6@bandit:/var/lib/dpkg/info$
}}}
{{{
bandit6@bandit:~$ find / | grep bandit7
	find: ‘/root’: Permission denied
	find: ‘/home/bandit28-git’: Permission denied
	find: ‘/home/bandit30-git’: Permission denied
	/home/bandit7
	/home/bandit7/.bashrc
	/home/bandit7/.profile
	/home/bandit7/.bash_logout
	find: ‘/home/bandit5/inhere’: Permission denied
	/home/bandit7/data.txt
	find: ‘/home/bandit27-git’: Permission denied
	find: ‘/home/bandit29-git’: Permission denied
	find: ‘/home/bandit31-git’: Permission denied
	find: ‘/lost+found’: Permission denied
	find: ‘/etc/ssl/private’: Permission denied
	/etc/bandit_pass/bandit7
	find: ‘/etc/polkit-1/localauthority’: Permission denied
	find: ‘/etc/lvm/archive’: Permission denied
	find: ‘/etc/lvm/backup’: Permission denied
	find: ‘/sys/fs/pstore’: Permission denied
	find: ‘/proc/tty/driver’: Permission denied
	find: ‘/cgroup2/csessions’: Permission denied
	find: ‘/boot/lost+found’: Permission denied
	find: ‘/tmp’: Permission denied
	find: ‘/run/lvm’: Permission denied
	find: ‘/run/screen/S-bandit0’: Permission denied
	find: ‘/run/screen/S-bandit29’: Permission denied
	find: ‘/run/screen/S-bandit1’: Permission denied
	find: ‘/run/screen/S-bandit10’: Permission denied
	find: ‘/run/screen/S-bandit25’: Permission denied
	find: ‘/run/screen/S-bandit30’: Permission denied
	find: ‘/run/screen/S-bandit9’: Permission denied
	find: ‘/run/screen/S-bandit28’: Permission denied
	find: ‘/run/screen/S-bandit18’: Permission denied
	find: ‘/run/screen/S-bandit20’: Permission denied
	find: ‘/run/screen/S-bandit5’: Permission denied
	/run/screen/S-bandit7
	find: ‘/run/screen/S-bandit7’: Permission denied
	find: ‘/run/screen/S-bandit16’: Permission denied
	find: ‘/run/screen/S-bandit26’: Permission denied
	find: ‘/run/screen/S-bandit8’: Permission denied
	find: ‘/run/screen/S-bandit15’: Permission denied
	find: ‘/run/screen/S-bandit4’: Permission denied
	find: ‘/run/screen/S-bandit3’: Permission denied
	find: ‘/run/screen/S-bandit19’: Permission denied
	find: ‘/run/screen/S-bandit31’: Permission denied
	find: ‘/run/screen/S-bandit17’: Permission denied
	find: ‘/run/screen/S-bandit2’: Permission denied
	find: ‘/run/screen/S-bandit22’: Permission denied
	find: ‘/run/screen/S-bandit21’: Permission denied
	find: ‘/run/screen/S-bandit14’: Permission denied
	find: ‘/run/screen/S-bandit13’: Permission denied
	find: ‘/run/screen/S-bandit24’: Permission denied
	find: ‘/run/screen/S-bandit23’: Permission denied
	find: ‘/run/shm’: Permission denied
	find: ‘/run/lock/lvm’: Permission denied
	find: ‘/var/spool/bandit24’: Permission denied
	find: ‘/var/spool/cron/crontabs’: Permission denied
	find: ‘/var/spool/rsyslog’: Permission denied
	find: ‘/var/tmp’: Permission denied
	find: ‘/var/lib/apt/lists/partial’: Permission denied
	find: ‘/var/lib/polkit-1’: Permission denied
-->
	/var/lib/dpkg/info/bandit7.password
-->
	find: ‘/var/log’: Permission denied
	find: ‘/var/cache/apt/archives/partial’: Permission denied
	find: ‘/var/cache/ldconfig’: Permission denied
}}}

bandit6@bandit:~$ cd /var/lib/dpkg/info/

bandit6@bandit:/var/lib/dpkg/info$ cat bandit7.password

--> HKBPTKQnIay4Fw76bEy8PVxKEDQRKTzs

bandit17

bandit7@bandit:~$ cat data.txt | grep millionth
--> millionth	cvX2JJa4CFALtqS87jk27qwqGhBM9plV

bandit8 to 9

bandit8@bandit:~$ cat data.txt | sort | uniq -u
--> UsvVyFSfZZWbi6wgC7dAFyFuR6jQQUhR

OR 

bandit8@bandit:~$ strings data.txt | sort | uniq -u
--> UsvVyFSfZZWbi6wgC7dAFyFuR6jQQUhR

bandit9 to 10

Bad way to do it is:
cat data.text
manually scroll trhough and look for a few === then read the next string which is:
--> truKLdjsbJ5g7yyJ2X2R0o3a5HQJFuLk

OR 

bandit9@bandit:~$ strings data.txt | fgrep =
========== the*2i"4
=:G e
========== password
<I=zsGi
Z)========== is
A=|t&E
Zdb=
c^ LAh=3G
*SF=s
&========== truKLdjsbJ5g7yyJ2X2R0o3a5HQJFuLk
S=A.H&^
bandit9@bandit:~$
"

OR 

bandit9@bandit:~$ strings data.txt | grep -E "=+"
========== the*2i"4
=:G e
========== password
<I=zsGi
Z)========== is
A=|t&E
Zdb=
c^ LAh=3G
*SF=s
&========== truKLdjsbJ5g7yyJ2X2R0o3a5HQJFuLk
S=A.H&^
"

bandit10

