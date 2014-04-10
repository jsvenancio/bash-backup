bash-backup
===========

This small application can use rsync to backup the folders specified by the user.

basis functions:
» copies of files present in SOURCE folder
» check modified files to more than 00:01:00
» erases the backup folder with modifications to more than 60 day
» no network backup support

HOW TO CONFIG :
  open config.sh width eg.: gedit
  set SOURCE var
  ser DEST (destiny) var

HOW TO RUN :
  open terminal
  go to the bash-backup directory
  run "sh run.sh"

============

Esta pequena aplicação usa RSYNC para puder efectuar backups de pastas indicadas pelo utilizador.

funções base:
» copia de ficheiros presentes em pasta SOURCE
» verificação de ficheiros modificados à mais de 1 min.
» apaga pasta de backup com modificações à mais de 60 dias
» sem suporte para backup por rede

HOW TO CONFIG :
  open config.sh width eg.: gedit
  set SOURCE var
  ser DEST (destiny) var

HOW TO RUN :
  open terminal
  go to the bash-backup directory
  run "sh run.sh"
