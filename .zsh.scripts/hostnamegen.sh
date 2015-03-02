#!/usr/bin/env bash

#
# genhost - generate unused hostnames by randomly picking from a word list
#

readonly wordlist='/home/johannes/.zsh.scripts/wordlist'
readonly domain='lauinger-it.de'

# http://mywiki.wooledge.org/BashFAQ/026

# returns random number from 0 to ($1-1) in global var 'r'.
rand() {
  local max=$(( 32768 / $1 * $1 ))
  while (( (r=$RANDOM) >= max )); do :; done
  r=$(( r % $1 ))
}

# check for a positive integer argument
if [[ -z $1 ]]; then
  printf 'Usage: genhost <integer>\n'
  printf 'Generate unused hostnames by randomly picking from a word list\n'
  exit 1
else
  if [[ $1 == *[!0-9]* ]]; then
    printf 'genhost: "%d" is not a positive integer\n' "$1" >&2
    exit 1
  fi
fi

# read the word list into memory, removing commented words;
# then remove the trailing empty element, if any:
#    http://mywiki.wooledge.org/BashFAQ/005#Handling_newlines_.28or_lack_thereof.29_at_the_end_of_a_file
unset lines n
while IFS= read -r 'lines[n++]'; do :; done < <(sed '/^#/d' "$wordlist")
[[ ${lines[n-1]} ]] || unset -v 'lines[--n]'

# output the random hostname(s)
for i in $(seq $1); do
  if [[ $n -eq 0 ]]; then
    printf 'genhost: no more available hostnames left in file %s\n' "$wordlist" >&2
    exit 1
  fi

  # pick a random available word
  rand $n
  printf '%s.%s\n' "${lines[r]}" "$domain"

  # mark the word as used in the word list
  case $OSTYPE in
    darwin*)
      sed -i '' "s/^${lines[r]}\$/#${lines[r]}/" "$wordlist"
      ;;
    linux*)
      sed -i "s/^${lines[r]}\$/#${lines[r]}/" "$wordlist"
      ;;
  esac

  # remove the used word from the array to prevent duplicates
  lines=(${lines[@]:0:$r} ${lines[@]:$(( $r + 1 ))})
  n=$(( n - 1 ))
done

exit 0
