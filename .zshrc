
# shared-wayland-clipboard
if [ "$(id -un)" = "testing" ]; then
  export XDG_RUNTIME_DIR=/run/user/1000
  if [ -S /run/user/1000/wayland-1 ]; then
    export WAYLAND_DISPLAY=wayland-1
  elif [ -S /run/user/1000/wayland-0 ]; then
    export WAYLAND_DISPLAY=wayland-0
  fi
fi
