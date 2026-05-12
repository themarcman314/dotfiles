
# env vars to set at login, zsh settings in ~/.zshrc

export EDITOR="nvim"
export PATH="/home/marcman/.local/share/bin:$PATH"
export PATH="$PATH:/home/marcman/matlab/bin"
export PATH=$PATH:~/.npm-global/bin
export PATH=$PATH:/usr/lib/emscripten
export XDG_PICTURES_DIR="~/Pictures"
export BROWSER="firefox"
export MANPAGER='nvim +Man!'
export HASS_SERVER=http://192.168.1.140:8123
export HASS_TOKEN=$(cat .keys)

start-hyprland
export QSYS_ROOTDIR="/home/marcman/.cache/paru/clone/quartus-free/pkg/quartus-free-quartus/opt/intelFPGA/25.1/quartus/sopc_builder/bin"
