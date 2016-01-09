@echo off

if not exist setup-x86.exe (
  echo *** Fetching cygwin setup file: setup-x86.exe
  powershell -Command "(new-object System.Net.WebClient).DownloadFile('https://cygwin.com/setup-x86.exe','setup-x86.exe')"
)

setup-x86.exe -q -a x86 -R c:\cygwin -l c:\cygwin\packages -s http://cygwin.mbwarez.dk -P "curl,wget,xz,nano,ncurses,openssh,patch,readline,unzip,chere,lftp,gnupg,rsync"

rem echo *** Installation is complete. To get explorer integration, open the Cygwin Terminal as Administrator and run "chere -i -t mintty"

rem chere -i -t mintty

rem pause