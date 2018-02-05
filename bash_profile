parse_git_branch() {
 git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1) /'
}
export -f parse_git_branch

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

export CLICOLOR=1
export PS1="\[\e[00;32m\]\h\[\e[0m\]\[\e[00;37m\]:\[\e[0m\]\[\e[01;36m\]\W\[\e[0m\]\[\e[00;37m\] \[\e[0m\]\[\e[00;33m\]\$(parse_git_branch)\[\e[0m\]\[\e[00;37m\]\$ \[\e[0m\]"
export LSCOLORS=ExFxCxDxBxegedabagacad
export EDITOR=mvim
export HISTCONTROL=ignoredups
export HISTFILESIZE=5000

alias be="bundle exec"
alias editaliases="vim ~/.bash_profile && reload"
alias ht="cd ~/workspace/hightower"
alias interview="cd ~/workspace/interview/exercises/portfolio_manager"
alias ll="ls -alh"
alias reload=". ~/.bash_profile"
alias server="foreman start -f Procfile.dev"
alias shutupvim="rm /var/tmp/*.swp"
alias workspace="cd ~/workspace"
alias vts="cd ~/workspace/viewthespace"
alias z="zeus rspec"
alias zake="zeus rake"
alias zonsole="zeus c"

alias q="CAPYBARA_JS_ERRORS=true be rspec"

eval "$(rbenv init -)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

nvm use 6.9.5

export PATH="/usr/local/opt/postgresql@9.6/bin:$PATH"
