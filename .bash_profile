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
}

function gitpp(){
	cd /Users/pkhan/Desktop/Nawaz/projects
	cp ~/.ssh.pp/* ~/.ssh/
	git config --global user.email "pkhan@paypal.com"
	git config user.email
}
