# Adds a function that implements the python pygmetize script to add highlighting to the cat command.

function pygmentize_cat {
  for arg in "$@"; do
    pygmentize -g "${arg}" 2> /dev/null || /bin/cat "${arg}"
  done
}
command -v pygmentize > /dev/null && alias cat=pygmentize_cat

