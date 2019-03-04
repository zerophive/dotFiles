# load Bash shell config
# ~/.path || ~/.bash/path can be used to extend `$PATH`.
# ~/.extras || ~/.bash/extras can be used for private settings
#   'extras' do not need to be commited to VCS
for file in ~/.path ~/.bash/{path,prompt,exports,aliases,functions,extras} ~/.extras; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;
