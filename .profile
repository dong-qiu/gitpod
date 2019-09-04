
# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi
export SDKMAN_DIR="/home/gitpod/.sdkman"
[[ -s "/home/gitpod/.sdkman/bin/sdkman-init.sh" ]] && source "/home/gitpod/.sdkman/bin/sdkman-init.sh"
. ~/.nvm/nvm-lazy.sh

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export PATH="$HOME/.cargo/bin:$PATH"


###############################################################################
##########  Gitpod - append
###############################################################################

# Make docker environment variables available in the terminal session
set -a; . /var/gitpod/docker_env; set +a;

export GEM_HOME=/workspace/.rvm
export GEM_PATH=$GEM_HOME:$GEM_PATH
export PATH=/workspace/.rvm/bin:$PATH

export PIPENV_VENV_IN_PROJECT=true
export PIP_USER=yes
export PYTHONUSERBASE=/workspace/.pip-modules
export PATH=$PYTHONUSERBASE/bin:$PATH
unset PIP_TARGET
unset PYTHONPATH

# Set CARGO_HOME to reside in workspace if:
#  - it's RUNTIME (/workspace present)
if [ -d /workspace ]; then
    export CARGO_HOME=/workspace/.cargo
    export PATH=$CARGO_HOME/bin:$PATH
fi

###############################################################################
##########  Gitpod - append
###############################################################################

