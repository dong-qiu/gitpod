
#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/gitpod/.sdkman"
[[ -s "/home/gitpod/.sdkman/bin/sdkman-init.sh" ]] && source "/home/gitpod/.sdkman/bin/sdkman-init.sh"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"