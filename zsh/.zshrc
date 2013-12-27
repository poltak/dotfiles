# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
ZSH_THEME="poltak"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
export UPDATE_ZSH_DAYS=7

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(vi-mode brew osx)

source $ZSH/oh-my-zsh.sh

# TODO: clone zsh-syn into oh-my-zsh plugins dir
# Source zsh-syntax-highlighting stuff
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Path to personal zsh configs.
ZSH_CONFIGS=$HOME/.zsh

# Small function to check if specified config.zsh file is valid config.
# NOTE: based off oh-my-zsh's is_plugin() function.
is_config() {
  local base_dir=$1
  local name=$2
  test -f $base_dir/$name.conf.zsh
}

# Source all configs.
for config ($ZSH_CONFIGS); do
  if is_config $ZSH_CONFIGS $config; then
    soure $ZSH_CONFIGS/$config.config.zsh
  else
    echo "Invalid zsh config found in config directory: $config" &>2
  fi
done
