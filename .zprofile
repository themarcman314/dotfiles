
# env vars to set at login, zsh settings in ~/.zshrc

export EDITOR="nvim"
export PATH="~/.local/share/bin:$PATH"
export XDG_PICTURES_DIR="~/Pictures"
export BROWSER="firefox"
export MANPAGER='nvim +Man!'
if uwsm check may-start; then
    exec uwsm start hyprland.desktop
fi
