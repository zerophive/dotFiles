#
# AWG neu bash rc
#
# A Historical Story - for anyone who might actually care
# -------------------------------------------------------
# I have been using macOS (MacOS, osx, OpenStep, NeXTStep) for a long time. In
# that time I was an devoted and ardent user of TCSH. I was mocked my the Bash
# folks and laughed at by the Zsh crowd. But I still persisted in using a shell
# long since abandoned by nearly everyone (it's last release was late 2016) see
# http://tcsh.org/Home , if it comes up.
#
#
# Anyways, while working at Apple in 2016, a coworker showed me their fancy
# smanshy Bash setup, the history searching and completion and the auto-
# complete seemed otherworldly. So, like a good engineer I decided to pull
# a Cortez, burn everything and start anew. And other than setting up a few
# basic aliases and a prompt, I have done nothing more with it. Finally fed up
# leaving so many projects undone, I have gotten back to this little project, 
# a nwq Bash config and proper management of my dotfiles.
#
#
# I looked a lot of options, GNU Stow, vcsh all looked promising, but at the
# I decided to go it simple and kind of roll my own vcsh like system with a
# simple alias and some other glue. I am choosing this for a couple of reasons:
#
# [1] there is nothing fancy to download to depend on or anything. It is plain
# old git nothing more, nothing less. If git can do it so I will.
#
# [2] because this is a raw git repo, it will force me to learn more about git
# and how to use it better, I never felt comfortable with git, honestly I just
# miss SVN (oh simple days..). By using a pure git based solution, I will have
# to cozy up to git and make my peace with it.
#
# [3] (yes I know I said there were a couple of reasons, my config, so..) I
# prefer to roll my own solutions. This will make me a better engineer
# and a more complete developer. Using a pre-packaged solution like GNU Stow
# or dotbot might make me hip, but I would just be another assembler of bits,
# not really understanding the real mechanics and trade-offs behind that code,
# whatever code that might be. GNU Stow creates a sea of symlinks, which I have
# used in the past and these days, using them makes me sad, so I am going there.
# VCSH does what I really want, but and the end it is majixs on top of a special
# sequence of conventions and commands on to git. Bot of those solutions while
# powerful, capabale and rather popular; do not jive with me on a personal
# level, so here we are, rolling my own. Mostly likely I will probably be coming
# back to one of these, until then, let the education by failure begin.
#
# This introduction and history has somehow turned into a manifesto, not really
# my intent, but anyways... I intend this to be rather readbale and
# commented with enough understanding why I took the decisions I made.
# First decision is to clean out my rc file and move things into profile.
# This is a hip thing I do agree with

# Standard rc stuff here, seen it in all over the place,
# so I took it, you can find it everywhere; copyright, me, but not me.

[ -n "$PS1" ] && source ~/.bash_profile;
