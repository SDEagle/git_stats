git_stats
=========

A ruby script for a bash git prompt with git status infos in it. 
An example bash PS1:
```bash
PS1='${debian_chroot:+($debian_chroot)}\u@\W$(__git_ps1 "[%s$(git_status.rb 2>/dev/null)]")> '
```
