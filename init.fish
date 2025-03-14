curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher

fisher install ly4096x/tide ly4096x/fish-plugin-sudope

set -U tide_left_prompt_suffix ''
set -U tide_right_prompt_prefix ''
set -U tide_left_prompt_items context pwd jj git newline character
set -U tide_right_prompt_items status cmd_duration jobs direnv node python rustc java php pulumi ruby go gcloud kubectl distrobox toolbox terraform aws nix_shell crystal elixir zig time
set -U tide_context_always_display true
set -U tide_context_hostname_parts 5
set -U tide_cmd_duration_threshold -1
set -U tide_cmd_duration_decimals 3

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
