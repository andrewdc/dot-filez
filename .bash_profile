export PS1='\e[0;31m[\u=> \W\$ \e[m '
export PATH="$HOME/.npm-packages/bin:$PATH"
export PATH="$HOME/.node/bin:$PATH"
export PATH="$HOME/usr/local/bin:$PATH"

# top
alias cpu='top -o cpu'
alias mem='top -o rsize' # memory

# Get your current public IP
alias ip="curl icanhazip.com"

# Parenting changing perms on / #
alias chown='chown --preserve-root'
alias chmod='chmod --preserve-root'
alias chgrp='chgrp --preserve-root'

alias ll='ls -FGlAhpi'
alias flush='rm -rf node_modules/ && npm install'
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
# -> Prevents accidentally clobbering files.
alias mkdir='mkdir -p'

alias ports='netstat -tulanp'

alias ben='echo "Daddy loves Ben!!!"'
alias daddy='echo "Ben loves Daddy!!!"'
alias mommy='echo "Daddy loves Mommy!!!"'
alias elliott='echo "Ben loves Elliott!!!"'
alias h='history'
alias j='jobs -l'
alias which='type -a'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias src='cd ~/src'
alias yup='echo "Fo real, son. Fo real."'

alias gs='git status'
alias gaa='git add .'
alias gp='git push'
alias gl='git pull'
alias ghp='git subtree push --prefix public origin gh-pages'
alias gg='git log --oneline --abbrev-commit --all --graph --decorate --color'


# Reset
Color_Off="\[\033[0m\]"       # Text Reset

# Regular Colors
Black="\[\033[0;30m\]"        # Black
Red="\[\033[0;31m\]"          # Red
Green="\[\033[0;32m\]"        # Green
Yellow="\[\033[0;33m\]"       # Yellow
Blue="\[\033[0;34m\]"         # Blue
Purple="\[\033[0;35m\]"       # Purple
Cyan="\[\033[0;36m\]"         # Cyan
White="\[\033[0;37m\]"        # White

# Bold
BBlack="\[\033[1;30m\]"       # Black
BRed="\[\033[1;31m\]"         # Red
BGreen="\[\033[1;32m\]"       # Green
BYellow="\[\033[1;33m\]"      # Yellow
BBlue="\[\033[1;34m\]"        # Blue
BPurple="\[\033[1;35m\]"      # Purple
BCyan="\[\033[1;36m\]"        # Cyan
BWhite="\[\033[1;37m\]"       # White

# Underline
UBlack="\[\033[4;30m\]"       # Black
URed="\[\033[4;31m\]"         # Red
UGreen="\[\033[4;32m\]"       # Green
UYellow="\[\033[4;33m\]"      # Yellow
UBlue="\[\033[4;34m\]"        # Blue
UPurple="\[\033[4;35m\]"      # Purple
UCyan="\[\033[4;36m\]"        # Cyan
UWhite="\[\033[4;37m\]"       # White

# Background
On_Black="\[\033[40m\]"       # Black
On_Red="\[\033[41m\]"         # Red
On_Green="\[\033[42m\]"       # Green
On_Yellow="\[\033[43m\]"      # Yellow
On_Blue="\[\033[44m\]"        # Blue
On_Purple="\[\033[45m\]"      # Purple
On_Cyan="\[\033[46m\]"        # Cyan
On_White="\[\033[47m\]"       # White

# High Intensty
IBlack="\[\033[0;90m\]"       # Black
IRed="\[\033[0;91m\]"         # Red
IGreen="\[\033[0;92m\]"       # Green
IYellow="\[\033[0;93m\]"      # Yellow
IBlue="\[\033[0;94m\]"        # Blue
IPurple="\[\033[0;95m\]"      # Purple
ICyan="\[\033[0;96m\]"        # Cyan
IWhite="\[\033[0;97m\]"       # White

# Bold High Intensty
BIBlack="\[\033[1;90m\]"      # Black
BIRed="\[\033[1;91m\]"        # Red
BIGreen="\[\033[1;92m\]"      # Green
BIYellow="\[\033[1;93m\]"     # Yellow
BIBlue="\[\033[1;94m\]"       # Blue
BIPurple="\[\033[1;95m\]"     # Purple
BICyan="\[\033[1;96m\]"       # Cyan
BIWhite="\[\033[1;97m\]"      # White

# High Intensty backgrounds
On_IBlack="\[\033[0;100m\]"   # Black
On_IRed="\[\033[0;101m\]"     # Red
On_IGreen="\[\033[0;102m\]"   # Green
On_IYellow="\[\033[0;103m\]"  # Yellow
On_IBlue="\[\033[0;104m\]"    # Blue
On_IPurple="\[\033[10;95m\]"  # Purple
On_ICyan="\[\033[0;106m\]"    # Cyan
On_IWhite="\[\033[0;107m\]"   # White

# Various variables you might want for your PS1 prompt instead
Time12h="\T"
Time12a="\@"
PathShort="\w"
PathFull="\W"
NewLine="\n"
Jobs="\j"

source ~/git-completion.bash
source ~/.git-prompt.sh

# This PS1 snippet was adopted from code for MAC/BSD I saw from: http://allancraig.net/index.php?option=com_content&view=article&id=108:ps1-export-command-for-git&catid=45:general&Itemid=96
# I tweaked it to work on UBUNTU 11.04 & 11.10 plus made it mo' better

# export PS1=$IBlack$Time12h$Color_Off'$(git branch &>/dev/null;\
# if [ $? -eq 0 ]; then \
#   echo "$(echo `git status` | grep "nothing to commit" > /dev/null 2>&1; \
#   if [ "$?" -eq "0" ]; then \
#     # @4 - Clean repository - nothing to commit
#     echo "'$Green'"$(__git_ps1 " (%s)"); \
#   else \
#     # @5 - Changes to working tree
#     echo "'$IRed'"$(__git_ps1 " {%s}"); \
#   fi) '$BYellow$PathShort$Color_Off'\$ "; \
# else \
#   # @2 - Prompt when not in GIT repo
#   echo " '$Yellow$PathShort$Color_Off'\$ "; \
# fi)'
#\[\033[01;32m\]\u@\h\[\033[01;34m\]

export PS1=' \w\[\033[01;33m\]$(__git_ps1)\[\033[01;34m\] \$\[\033[00m\] '
export GIT_PS1_SHOWDIRTYSTATE=1

export VISUAL=vim
export EDITOR="$VISUAL"

export PATH=$PATH:~/bin

# ulimit -n 2048

# MySQL
if [ -r  /usr/local/mysql/bin ]; then
    export PATH=/usr/local/mysql/bin:$PATH
    # For faster startup
    alias mysql='mysql -A'
fi
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
