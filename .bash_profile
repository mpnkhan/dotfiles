alias please=sudo
alias keypp="cp ~/.ssh.pp/* ~/.ssh/"
alias keypub="cp ~/.ssh.pub/* ~/.ssh/"


# List all files colorized in long format
alias l="ls -l"

# List all files colorized in long format, including dot files
alias la="ls -la"


# List only directories
alias lsd='ls -l | grep "^d"'

#git
alias br='git branch'
alias cm='git checkout master'
alias cg='git checkout gh-pages'
alias s='git status'
alias w='git config user.email'

#eclipse_poject_import_into_androidstudio
export ANDROID_HOME=~/Library/Android/sdk
export PATH=${PATH}:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools:~/drivers:/Users/pkhan/Desktop/Nawaz/mongodb/bin

#JAVA
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_121.jdk/Contents/Home
export PATH=$JAVA_HOME/bin:$PATH

#NVM for nodeJS
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

#NVM for nodeJS yarn build
export PATH="$HOME/.yarn/bin:$PATH"


function parse_git_dirty() {
   git diff --quiet --ignore-submodules HEAD 2>/dev/null; [ $? -eq 1 ] && echo '*'
}

function parse_git_branch() {
git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/\1$(parse_git_dirty)/"
}

function gitpub(){
	cd /Users/pkhan/Desktop/Nawaz/Outside
	cp ~/.ssh.pub/* ~/.ssh/
	git config --global user.email "mpnkhan@gmail.com"
	git config user.email
        npm config set registry https://registry.npmjs.org/
        npm config get registry	
}

function gitpp(){
	cd /Users/pkhan/Desktop/Nawaz/projects
	cp ~/.ssh.pp/* ~/.ssh/
	git config --global user.email "pkhan@paypal.com"
	git config user.email
        npm config set registry http://npm.paypal.com/
        npm config get registry
        npm config set package-lock false	
}
