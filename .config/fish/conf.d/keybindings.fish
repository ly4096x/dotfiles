status is-interactive || exit

bind ctrl-c 'test -z (commandline) && commandline -r " "' cancel-commandline
