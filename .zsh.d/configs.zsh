## Sprache
export LANG=de_DE.UTF-8

## Ruby Gems
export PATH=$PATH:/home/johannes/.gem/ruby/2.1.0/bin

## Editor
export EDITOR=vim

## ssh keyring
export SSH_AUTH_SOCK=/run/user/1000/keyring/ssh
export GPG_AGENT_INFO=/run/user/1000/keyring/gpg:0:1

## Terminal-Farben
export TERM=xterm-256color
export PROMPT_COMMAND='echo -ne "\033]0;${PWD##*/}\007"'

## Keymappings
xmodmap ~/.Xmodmap 2> /dev/null
