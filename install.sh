### Install Brew without sudo ###
mkdir homebrew && curl -L https://github.com/Homebrew/brew/tarball/master | tar xz --strip 1 -C homebrew
eval "$(homebrew/bin/brew shellenv)"
brew update --force --quiet
chmod -R go-w "$(brew --prefix)/share/zsh"
# export PATH=$HOME/homebrew/bin:$PATH
# Link: ln -s ~/goinfre/homebrew ~/.

### Install Docker ###
# Link com.docker.docker with goinfre
cd ~/Library/Containers
ln -s /goinfre/mmounchi/com.docker.docker ./com.docker.docker


### Install Docker Compose
brew install docker-compose
docker-compose up -d --build --remove-orphans
docker-machine create misaki
docker-machine ls
docker-machine ip misaki
/etc/hosts
docker-machine ssh misaki

docker-machine env
docker-machine start misaki
eval $(docker-machine env misaki)

