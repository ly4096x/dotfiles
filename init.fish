curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher

fisher install ly4096x/tide ly4096x/fish-plugin-sudope

tide configure --auto --style=Rainbow --prompt_colors='True color' --show_time='24-hour format' --rainbow_prompt_separators=Vertical --powerline_prompt_heads=Slanted --powerline_prompt_tails=Flat --powerline_prompt_style='Two lines, character and frame' --prompt_connection=Dotted --powerline_right_prompt_frame=No --prompt_connection_andor_frame_color=Lightest --prompt_spacing=Compact --icons='Few icons' --transient=No

set -U tide_left_prompt_suffix ''
set -U tide_right_prompt_prefix ''
set -U tide_left_prompt_items context pwd jj git newline character
set -U tide_right_prompt_items status cmd_duration jobs direnv node python rustc java php pulumi ruby go gcloud kubectl distrobox toolbox terraform aws nix_shell crystal elixir zig time
set -U tide_context_always_display true
set -U tide_context_hostname_parts 5
set -U tide_cmd_duration_threshold -1
set -U tide_cmd_duration_decimals 3

set -U tide_pwd_bg_color 2068c3
set -U tide_jj_bg_color 00afff
set -U tide_jj_color black

set -U fish_greeting

fish_add_path -U ~/.local/bin ~/.cargo/bin /opt/homebrew/bin

fish_config theme save 'Tomorrow Night Bright'

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
