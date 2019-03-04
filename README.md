# (.) files

## Creating the repo and what I did
I saw this article [The best way to store your dotfiles: A bare Git repository](https://developer.atlassian.com/blog/2016/02/best-way-to-store-dotfiles-git-bare-repo/) and it spoke to me in the midst of my frustration in choosing between GNU Stow and VCSH. I liked to idea of depending on ***nothing*** and ***rolling my own solution*** and so.

Here is what I did when I set this up:

```
git init --bare $HOME/.dotFiles
alias dotFiles='/usr/bin/git --git-dir=$HOME/.dotFiles/ --work-tree=$HOME'
dotFiles config --local status.showUntrackedFiles no
```
I like to add this alias with my other aliases, or if this is a new system something like

```
echo "alias dotFiles ='/usr/bin/git --git-dir=$HOME/. dotFiles/ --work-tree=$HOME'" >> $HOME/.bashrc
```
Also add ```.dotFile``` to ```.gitignore``` because git is git

```
echo ".dotFiles" >> .gitignore
```

now use ```dotFile``` instead of ```git``` to interact with the repo, enjoy

## Bash
The Bash setup is greatly simplified and most of the good bits live in the .bash directory, .bashrc is dead stupid simple and .bash_profile is enough to go through and source the files needed for the shell. This will probably change over time, but the intent was to keep it simple to understand, modify and maintain.

## Theoretical BS
**Warning** *Mental Spew*
I wanted to create a new series of dotfiles for myself. As an active Tcsh user for over 20 years, I finally reached the logical conclusion:

**TCSH IS DEAD**

It was time to move on to a more modern shell Bash, and with that I pulled a Cortez, start from scratch with Bash and took it upon myself to formalize my configuration and commit it to git. All the cool kids are doing it and I certainly want to be "cool".