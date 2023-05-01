# load Bash shell config
# ~/.path || ~/.bash/path can be used to extend `$PATH`.
# ~/.extras || ~/.bash/extras can be used for private settings
#   'extras' do not need to be commited to VCS
for file in ~/.path ~/.bash/{path,path_*,prompt,exports,exports_*,aliases,aliases_*,functions,functions_*,extras_*} ~/.extras; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

##############################
# initialize tab completions #
##############################
if which brew &> /dev/null && [ -f "$(brew --prefix)/share/bash-completion/bash_completion" ]; then
	export BASH_COMPLETION_COMPAT_DIR="$(brew --prefix)/etc/bash_completion.d"
	source "$(brew --prefix)/share/bash-completion/bash_completion";
elif [[ -e "$(brew --prefix)/etc/profile.d/bash_completion.sh" ]]; then
	source "$(brew --prefix)/etc/profile.d/bash_completion.sh"
elif [[ -e "/etc/bash_completion" ]]; then
	source "/etc/bash_completion"
fi;

#BASH_COMPLETION_ALT_DIR="$(brew --prefix)/etc/bash_completion.d"
#if which brew &> /dev/null && [ -d "$BASH_COMPLETION_ALT_DIR" ]; then
#    for i in $(ls "$BASH_COMPLETION_ALT_DIR"); do
#        i=$BASH_COMPLETION_ALT_DIR/$i
#        [[ -f $i && -r $i ]] && . "$i"
#    done
#fi


##################################################
# start tmux session                             #
#   this will kind of force to me use/learn tmux #
##################################################
if (( ${SHLVL} < 2 )); then
    tmx
fi
[[ :$PATH: == *:$HOME/bin:* ]] || PATH=$HOME/bin:$PATH
