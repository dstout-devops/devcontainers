set -e

. ./library_scripts.sh

# nanolayer is a cli utility which keeps container layers as small as possible
# source code: https://github.com/devcontainers-contrib/nanolayer
# `ensure_nanolayer` is a bash function that will find any existing nanolayer installations, 
# and if missing - will download a temporary copy that automatically get deleted at the end 
# of the script
ensure_nanolayer nanolayer_location "v0.5.6"

$nanolayer_location \
    install \
    devcontainer-feature \
    "ghcr.io/devcontainers-contrib/features/pipx-package:1" \
    --option package='ansible-core' --option injections='ansible' --option includedeps='true'

$nanolayer_location \
    install \
    devcontainer-feature \
    "ghcr.io/devcontainers-contrib/features/pipx-package:1" \
    --option package='ansible-creator' --option injections='ansible' --option includedeps='true'

$nanolayer_location \
    install \
    devcontainer-feature \
    "ghcr.io/devcontainers-contrib/features/pipx-package:1" \
    --option package='ansible-builder' --option injections='ansible' --option includedeps='true'

$nanolayer_location \
    install \
    devcontainer-feature \
    "ghcr.io/devcontainers-contrib/features/pipx-package:1" \
    --option package='ansible-navigator' --option injections='ansible' --option includedeps='true'

$nanolayer_location \
    install \
    devcontainer-feature \
    "ghcr.io/devcontainers-contrib/features/pipx-package:1" \
    --option package='ansible-lint' --option injections='ansible' --option includedeps='true'
    
echo 'Done!'