status is-interactive || exit

bind ctrl-c 'echo "^C"; commandline | cat; commandline -f kill-whole-line repaint'
