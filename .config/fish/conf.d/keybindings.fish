status is-interactive || exit

bind ctrl-c 'echo; commandline | cat; commandline -f kill-whole-line repaint'
