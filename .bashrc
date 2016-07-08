GIT_PROMPT_ONLY_IN_REPO=1
#============================================================
#
#  ALIASES AND FUNCTIONS
#
#  Arguably, some functions defined here are quite big.
#  If you want to make this file smaller, these functions can
#+ be converted into scripts and removed from here.
#
#============================================================

#-------------------
# Personnal Aliases
#-------------------

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
# -> Prevents accidentally clobbering files.
alias mkdir='mkdir -p'

alias h='history'
alias j='jobs -l'
alias which='type -a'
alias ..='cd ..'

# Pretty-print of some PATH variables:
alias path='echo -e ${PATH//:/\\n}'
alias libpath='echo -e ${LD_LIBRARY_PATH//:/\\n}'

alias du='du -kh'    # Makes a more readable output.
alias df='df -kTh'

#-------------------------------------------------------------
# The 'ls' family (this assumes you use a recent GNU ls).
#-------------------------------------------------------------
# Add colors for filetype and  human-readable sizes by default on 'ls':
alias ls='ls -h --color'
alias lx='ls -lXB'         #  Sort by extension.
alias lk='ls -lSr'         #  Sort by size, biggest last.
alias lt='ls -ltr'         #  Sort by date, most recent last.
alias lc='ls -ltcr'        #  Sort by/show change time,most recent last.
alias lu='ls -ltur'        #  Sort by/show access time,most recent last.

# The ubiquitous 'll': directories first, with alphanumeric sorting:
alias ll="ls -lv --group-directories-first"
alias lm='ll |more'        #  Pipe through 'more'
alias lr='ll -R'           #  Recursive ls.
alias la='ll -A'           #  Show hidden files.
alias tree='tree -Csuh'    #  Nice alternative to 'recursive ls' ...

alias hist='git log -20 --pretty=format:"%C(yellow)%h%Creset\\ %C(green)%ar%C(cyan)%d\\ %Creset%s%C(yellow)\\ [%cn]" --graph --decorate --all'
alias gs='git status'
alias gd='git diff'
alias gt='for remote in `git branch -r `; do git branch --track $remote; done'
alias reset-projects='git checkout */project.json'
alias clear-artifacts='find -type d -name "*artifacts*" | xargs rm -vfr '"'"'{}'"'"''
alias clear-bin='find -type d -name "*bin*" | xargs rm -vfr '"'"'{}'"'"''
alias clear-node='find -type d -name "*node_modules*" | xargs rm -vfr '"'"'{}'"'"''
alias clear-bower='find -type d -name "*bower_components*" | xargs rm -vfr '"'"'{}'"'"''
alias clear-wwwrootlib='find -type d -wholename "*wwwroot/lib*" | xargs rm -vfr '"'"'{}'"'"''
alias clear-debug='find -type d -name "*Debug*" | xargs rm -vfr  '"'"'{}'"'"''
alias clear-release='find -type d -name "*Release*" | xargs rm -vfr  '"'"'{}'"'"''
alias clear-tilda='find -type f -name "*~" | xargs rm -vfr  '"'"'{}'"'"''
alias clear-nuget='rm /c/Users/Rocotton/.nuget/packages/iUS.* -fvr'
alias clear-dnx='rm /c/Users/Rocotton/.dnx/packages/iUS.* -frv'
alias clear-local-nuget='rm /c/Users/Rocotton/iUSNugetPackages/ -frv'
alias clear-all-vs-cache='clear-artifacts && clear-nuget && clear-dnx && clear-local-nuget'
alias clear-originals='find -type f -name *.orig | xargs rm'
alias delete-merged-branches='git branch --merged | grep -v \* | grep -v master | grep -v develop | xargs git branch -D'
alias nuke-git-branches=' git branch | grep -v develop | grep -v master | grep -v "*" | xargs -n 1 git branch -D'
alias delete-single-branch='echo "git push origin --delete"'

alias find-versions="find -type f -name project.json -print0 | xargs -0 grep 'version' {}"
alias set-versions="python /c/dev/VersionSet/VersionSet.py ."

alias vs='explorer *.sln'
alias ex='explorer'


source ~/.bash-git-prompt/gitprompt.sh
