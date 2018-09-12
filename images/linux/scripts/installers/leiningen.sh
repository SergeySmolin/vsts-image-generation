#!/bin/bash
################################################################################
##  File:  leiningen.sh
##  Team:  CI-Platform
##  Desc:  Installs Leiningen
################################################################################

## Source the helpers for use with the script
source $HELPER_SCRIPTS/document.sh

curl -s https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein > /usr/local/bin/lein \
  && chmod 0755 /usr/local/bin/lein

## Document what was added to the image
echo "Lastly, documenting what we added to the metadata file"
DocumentInstalledItem "Leiningen version ($(lein -v))"
