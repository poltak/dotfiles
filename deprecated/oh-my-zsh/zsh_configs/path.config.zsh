# Custom path additions.

# Where my own scripts are synced.
DROPBOX_BIN=($HOME/Dropbox/bin)

# Where mactex puts its bin.
LATEX_BIN=(/usr/local/texlive/2013/bin/universal-darwin)

# Where homebrew puts its bins.
HOMEBREW_BIN=(/usr/local/bin /usr/local/sbin)

# Where OS X puts its bins.
SYSTEM_BIN=(/bin /usr/bin /sbin /usr/sbin)

# Where android-sdk platform-tools are installed.
ANDROID_SDK_BIN=($HOME/Library/Developer/Xamarin/android-sdk-mac_x86/platform-tools)

# Actually set the path in Z shell.
typeset -U path
path=($DROPBOX_BIN $LATEX_BIN $HOMEBREW_BIN $SYSTEM_BIN $ANDROID_SDK_BIN)
