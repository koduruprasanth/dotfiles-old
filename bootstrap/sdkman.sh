#!/bin/zsh

# Check for sdkman,
# Install if we don't have it
sdkman_install() {
    echo "Installing sdkman..."
    curl -s "https://get.sdkman.io" | bash
    export SDKMAN_DIR="$HOME/.sdkman"
    [[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
}

sdkman_flush() {
    sdk flush archives
    sdk flush temp
    sdk flush broadcast
}

sdkman_install
sdk install java
sdk install kotlin
sdk install visualvm
sdkman_flush
