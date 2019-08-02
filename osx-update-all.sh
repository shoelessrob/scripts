#!/bin/bash
# Below is taken from https://medium.com/@waxzce/keeping-macos-clean-this-is-my-osx-brew-update-cli-command-6c8f12dc1731
brew update
brew upgrade
brew cleanup -s

#now diagnotic
brew doctor
brew missing
#echo "you can hit mas upgrade to upgrade theses apps from the app store:"
#mas outdated
brew install mas
mas upgrade
npm update -g
pip install --upgrade pip
pip freeze --local | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 pip install -U
pip3 freeze --local | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 pip3 install -U

# clean up docker
docker system prune -a -f
