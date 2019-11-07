# load Bash shell config
# ~/.path || ~/.bash/path can be used to extend `$PATH`.
# ~/.extras || ~/.bash/extras can be used for private settings
#   'extras' do not need to be commited to VCS
for file in ~/.path ~/.bash/{path,prompt,exports,aliases,functions,extras} ~/.extras; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

##############################
# initialize tab completions #
##############################
if which brew &> /dev/null && [ -f "$(brew --prefix)/share/bash-completion/bash_completion" ]; then
	export BASH_COMPLETION_COMPAT_DIR="/usr/local/etc/bash_completion.d"
	source "$(brew --prefix)/share/bash-completion/bash_completion";
elif [[ -e "$(brew --prefix)/etc/profile.d/bash_completion.sh" ]]; then
	source "$(brew --prefix)/etc/profile.d/bash_completion.sh"
elif [[ -e "/etc/bash_completion" ]]; then
	source "/etc/bash_completion"
fi;

##################################################
# start tmux session                             #
#   this will kind of force to me use/learn tmux #
##################################################
if (( ${SHLVL} < 2 )); then
    tmx
fi
