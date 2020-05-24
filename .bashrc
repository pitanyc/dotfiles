# Aliases
alias c="clear"
alias l="ls -la --color -h --group-directories-first"
alias rm="rm -rf"
alias psef="ps -ef | grep"
alias path="echo -e ${PATH//:/\\n}" # pretty print $PATH
alias ..="cd ../"
alias ...="cd ../../"
alias ....="cd ../../../"

alias b="git branch"
alias s="git status"
alias u="git pull"
alias up="git pull upstream master"

alias d="python -m unittest discover"
alias t="python -m unittest test.om.test_bql_item_hash"

alias ce="conda env list"
alias ca="conda activate bqnt-2.160.1"

# Env vars
export EDITOR="code"
export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_77.jdk/Contents/Home"
export ANT_HOME="/Users/peter/Applications/apache-ant-1.10.6"
export CATALINA_HOME="/usr/local/opt/tomee-webprofile/libexec"
export PATH=$PATH:$ANT_HOME/bin

# BQNT setup
source /c/Miniconda3/etc/profile.d/conda.sh
export PATH=$PATH:/c/Miniconda3:/c/Miniconda3/Scripts
export BQSERVICES_TEST_INTEGRATION_SKIP_HTTP=1
export BQSERVICES_TEST_INTEGRATION=1

# Prompt
export GITAWAREPROMPT=~/.bash/git-aware-prompt
source "${GITAWAREPROMPT}/main.sh"
export PS1="\[$txtgrn\]\u@\h:\[$txtcyn\]\w \[$txtrst\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\]\$ "
export SUDO_PS1="\[$txtred\]\u@\h:\[$txtcyn\]\w\[$txtrst\] \$ "
