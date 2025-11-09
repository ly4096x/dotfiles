curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher

echo n | fisher install ly4096x/tide ly4096x/fish-plugin-sudope ly4096x/fish-plugin-keybindings ly4096x/fish-plugin-my-tools

tide configure --auto --style=Rainbow --prompt_colors='True color' --show_time='24-hour format' --rainbow_prompt_separators=Vertical --powerline_prompt_heads=Slanted --powerline_prompt_tails=Flat --powerline_prompt_style='Two lines, character and frame' --prompt_connection=Dotted --powerline_right_prompt_frame=No --prompt_connection_andor_frame_color=Lightest --prompt_spacing=Compact --icons='Few icons' --transient=No

set -U tide_left_prompt_suffix ''
set -U tide_right_prompt_prefix ''
set -U tide_left_prompt_items context shlvl vi_mode pwd jj newline character
set -U tide_right_prompt_items status cmd_duration jobs direnv node python rustc java php pulumi ruby go gcloud kubectl distrobox toolbox terraform aws nix_shell crystal elixir zig time
set -U tide_context_always_display true
set -U tide_context_hostname_parts 5
set -U tide_cmd_duration_threshold -1
set -U tide_cmd_duration_decimals 3
set -U tide_shlvl_bg_color C4A000
set -U tide_shlvl_icon '>'

set -U tide_pwd_bg_color 2068c3
set -U tide_jj_color normal
set -U tide_jj_bg_color 333
set -U tide_jj_bg_color_enforced true

set -U fish_greeting

set -U fish_escape_delay_ms 300

fish_add_path -U ~/.local/bin ~/.cargo/bin /opt/homebrew/bin

yes | fish_config theme save 'Tomorrow Night Bright'

command -sq vim && set -Ux EDITOR vim
command -sq nvim && set -Ux EDITOR nvim

set -Ux GOPATH ~/.local/go
set -Ux GOCACHE ~/.cache/go

# For WSL
if test -n "$WSL_DISTRO_NAME"
    if uname -r | grep WSL2
        set -Ux DISPLAY "$WSL_HOST_IP:0.0"

        echo "WSL_GUEST_IP=$WSL_GUEST_IP"
    else
        set -Ux DISPLAY "127.0.0.1:0.0"
    end
end

alias --save tmux='tmux -2'
alias --save l='ll -a'

if command -sq systemctl
    alias --save sc-add-requires='sudo systemctl add-requires'
    alias --save sc-add-wants='sudo systemctl add-wants'
    alias --save sc-cancel='sudo systemctl cancel'
    alias --save sc-cat='systemctl cat'
    alias --save sc-daemon-reexec='sudo systemctl daemon-reexec'
    alias --save sc-daemon-reload='sudo systemctl daemon-reload'
    alias --save sc-default='sudo systemctl default'
    alias --save sc-disable='sudo systemctl disable'
    alias --save sc-disable-now='sc-disable --now'
    alias --save sc-edit='sudo systemctl edit'
    alias --save sc-emergency='sudo systemctl emergency'
    alias --save sc-enable='sudo systemctl enable'
    alias --save sc-enable-now='sc-enable --now'
    alias --save sc-failed='systemctl --failed'
    alias --save sc-get-default='systemctl get-default'
    alias --save sc-halt='sudo systemctl halt'
    alias --save sc-help='systemctl help'
    alias --save sc-hibernate='systemctl hibernate'
    alias --save sc-hybrid-sleep='systemctl hybrid-sleep'
    alias --save sc-import-environment='sudo systemctl import-environment'
    alias --save sc-is-active='systemctl is-active'
    alias --save sc-is-enabled='systemctl is-enabled'
    alias --save sc-is-failed='systemctl is-failed'
    alias --save sc-is-system-running='systemctl is-system-running'
    alias --save sc-isolate='sudo systemctl isolate'
    alias --save sc-kexec='sudo systemctl kexec'
    alias --save sc-kill='sudo systemctl kill'
    alias --save sc-link='sudo systemctl link'
    alias --save sc-list-dependencies='systemctl list-dependencies'
    alias --save sc-list-jobs='systemctl list-jobs'
    alias --save sc-list-machines='sudo systemctl list-machines'
    alias --save sc-list-sockets='systemctl list-sockets'
    alias --save sc-list-timers='systemctl list-timers'
    alias --save sc-list-unit-files='systemctl list-unit-files'
    alias --save sc-list-units='systemctl list-units'
    alias --save sc-load='sudo systemctl load'
    alias --save sc-mask='sudo systemctl mask'
    alias --save sc-mask-now='sc-mask --now'
    alias --save sc-poweroff='systemctl poweroff'
    alias --save sc-preset='sudo systemctl preset'
    alias --save sc-preset-all='sudo systemctl preset-all'
    alias --save sc-reboot='systemctl reboot'
    alias --save sc-reenable='sudo systemctl reenable'
    alias --save sc-reload='sudo systemctl reload'
    alias --save sc-reload-or-restart='sudo systemctl reload-or-restart'
    alias --save sc-rescue='sudo systemctl rescue'
    alias --save sc-reset-failed='sudo systemctl reset-failed'
    alias --save sc-restart='sudo systemctl restart'
    alias --save sc-revert='sudo systemctl revert'
    alias --save sc-set-default='sudo systemctl set-default'
    alias --save sc-set-environment='sudo systemctl set-environment'
    alias --save sc-set-property='sudo systemctl set-property'
    alias --save sc-show='systemctl show'
    alias --save sc-show-environment='systemctl show-environment'
    alias --save sc-start='sudo systemctl start'
    alias --save sc-status='systemctl status'
    alias --save sc-stop='sudo systemctl stop'
    alias --save sc-suspend='systemctl suspend'
    alias --save sc-switch-root='sudo systemctl switch-root'
    alias --save sc-try-reload-or-restart='sudo systemctl try-reload-or-restart'
    alias --save sc-try-restart='sudo systemctl try-restart'
    alias --save sc-unmask='sudo systemctl unmask'
    alias --save sc-unset-environment='sudo systemctl unset-environment'
    alias --save scu-add-requires='systemctl --user add-requires'
    alias --save scu-add-wants='systemctl --user add-wants'
    alias --save scu-cancel='systemctl --user cancel'
    alias --save scu-cat='systemctl --user cat'
    alias --save scu-daemon-reexec='systemctl --user daemon-reexec'
    alias --save scu-daemon-reload='systemctl --user daemon-reload'
    alias --save scu-default='systemctl --user default'
    alias --save scu-disable='systemctl --user disable'
    alias --save scu-disable-now='scu-disable --now'
    alias --save scu-edit='systemctl --user edit'
    alias --save scu-emergency='systemctl --user emergency'
    alias --save scu-enable='systemctl --user enable'
    alias --save scu-enable-now='scu-enable --now'
    alias --save scu-failed='systemctl --user --failed'
    alias --save scu-get-default='systemctl --user get-default'
    alias --save scu-halt='systemctl --user halt'
    alias --save scu-help='systemctl --user help'
    alias --save scu-import-environment='systemctl --user import-environment'
    alias --save scu-is-active='systemctl --user is-active'
    alias --save scu-is-enabled='systemctl --user is-enabled'
    alias --save scu-is-failed='systemctl --user is-failed'
    alias --save scu-is-system-running='systemctl --user is-system-running'
    alias --save scu-isolate='systemctl --user isolate'
    alias --save scu-kexec='systemctl --user kexec'
    alias --save scu-kill='systemctl --user kill'
    alias --save scu-link='systemctl --user link'
    alias --save scu-list-dependencies='systemctl --user list-dependencies'
    alias --save scu-list-jobs='systemctl --user list-jobs'
    alias --save scu-list-machines='systemctl --user list-machines'
    alias --save scu-list-sockets='systemctl --user list-sockets'
    alias --save scu-list-timers='systemctl --user list-timers'
    alias --save scu-list-unit-files='systemctl --user list-unit-files'
    alias --save scu-list-units='systemctl --user list-units'
    alias --save scu-load='systemctl --user load'
    alias --save scu-mask='systemctl --user mask'
    alias --save scu-mask-now='scu-mask --now'
    alias --save scu-preset='systemctl --user preset'
    alias --save scu-preset-all='systemctl --user preset-all'
    alias --save scu-reenable='systemctl --user reenable'
    alias --save scu-reload='systemctl --user reload'
    alias --save scu-reload-or-restart='systemctl --user reload-or-restart'
    alias --save scu-rescue='systemctl --user rescue'
    alias --save scu-reset-failed='systemctl --user reset-failed'
    alias --save scu-restart='systemctl --user restart'
    alias --save scu-revert='systemctl --user revert'
    alias --save scu-set-default='systemctl --user set-default'
    alias --save scu-set-environment='systemctl --user set-environment'
    alias --save scu-set-property='systemctl --user set-property'
    alias --save scu-show='systemctl --user show'
    alias --save scu-show-environment='systemctl --user show-environment'
    alias --save scu-start='systemctl --user start'
    alias --save scu-status='systemctl --user status'
    alias --save scu-stop='systemctl --user stop'
    alias --save scu-switch-root='systemctl --user switch-root'
    alias --save scu-try-reload-or-restart='systemctl --user try-reload-or-restart'
    alias --save scu-try-restart='systemctl --user try-restart'
    alias --save scu-unmask='systemctl --user unmask'
    alias --save scu-unset-environment='systemctl --user unset-environment'
end
