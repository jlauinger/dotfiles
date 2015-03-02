#!/bin/bash

# Generate a random password
#
# $1 number of characters; defaults to 20
#
# $2 charset
# 0 = special characters, numbers and letters (default)
# 1 = numbers and letters
# 2 = letters only
# 3 = numbers only
#
#
# usage: pwgen.sh <LENGTH> <CHARS>
#
# examples:
#
# length = 20, special characters, numbers and letters
# pwgen.sh
#
# length = 10, special characters, numbers and letters
# pwgen.sh 10
#
# length = 8, numbers and letters
# pwgen.sh 8 1
#
# length = 25, letters only
# pwgen.sh 25 2


_output_()
{
    echo
    echo "Length:		$LENGTH chars"
    echo -n "Charset:	"
    case "$CHARS" in
	"[:graph:]") echo "special characters, numbers and letters" ;;
	"[:alnum:]") echo "numbers and letters" ;;
	"[:alpha:]") echo "letters only" ;;
	"[:digit:]") echo "numbers only" ;;
    esac
echo "Password:"
cat /dev/urandom | tr -dc $CHARS | head -c $LENGTH
echo
echo
}


_helptext_()
{
    echo
    echo "\"pwgen.sh\" generate a random password."
    echo "usage: pwgen.sh {[LENGTH] [CHARS]} {-h} {-r}"
    echo
    echo "LENGTH		Number of characters; default is 20"
    echo "CHARS		0 = special characters, numbers and letters (default)"
    echo "		1 = numbers and letters"
    echo "		2 = letters only"
    echo "		3 = numbers only"
    echo "-h		Show this text"
    echo "-r		Randomize the \"LENGTH\" and \"CHARS\" options"
    echo
    echo "If one introduces \"pwgen.sh\" from without \"LENGTH\" and \"CHARS\" options, then the default values are used."
    echo "The default values use a length of 20 characters and use 'special characters, numbers and letters'"
    echo "In random mode (-r option) is the max password length 1000 characters."
    echo
    echo "Examples:"
    echo
    echo "\"pwgen.sh\" OR \"pwgen.sh 20\" OR \"pwgen.sh 20 0\""
    echo "   length:	20 characters"
    echo "   charset:	special characters, numbers and letters"
    echo "   example:	"`cat /dev/urandom | tr -dc [:graph:] | head -c 20`
    echo
    echo "pwgen.sh 8 1"
    echo "   length:	8 characters"
    echo "   charset:	numbers and letters"
    echo "   example:	"`cat /dev/urandom | tr -dc [:alnum:] | head -c 8`
    echo
    echo "pwgen.sh 25 2"
    echo "   length:	25 characters"
    echo "   charset:	letters only"
    echo "   example:	"`cat /dev/urandom | tr -dc [:alpha:] | head -c 25`
    echo
    echo "pwgen.sh 4 3"
    echo "   length:	4 characters"
    echo "   charset:	numbers only"
    echo "   example:	"`cat /dev/urandom | tr -dc [:digit:] | head -c 4`
    echo
    exit 0
}


_invalid_()
{
    if [ "$1" = "length" ]; then
	echo
        echo "Invalid value for parameter \"LENGTH\". For more information use \"pwgen.sh -h\""
	echo
    elif [ "$1" = "chars" ]; then
	echo
        echo "Invalid value for parameter \"CHARS\". For more information use \"pwgen.sh -h\""
	echo
    fi
    exit 1
}


_random_()
{
    LENGTH=$((RANDOM % 999 +1))
    case `echo $((RANDOM % 2 +1))` in
	0) CHARS="[:graph:]" ;;
	1) CHARS="[:alnum:]" ;;
	2) CHARS="[:alpha:]" ;;
	3) CHARS="[:digit:]" ;;
    esac
    _output_
    exit 0
}


if [[ `echo "$1" | grep -E ^[[:digit:]]+$` ]]; then
    LENGTH=$1
else
    case $1 in
	"") LENGTH=20 ;;
	-h) _helptext_ ;;
	-r) _random_ ;;
	*) _invalid_ length ;;
    esac
fi


case $2 in
    "") CHARS="[:graph:]" ;;
    0) CHARS="[:graph:]" ;;
    1) CHARS="[:alnum:]" ;;
    2) CHARS="[:alpha:]" ;;
    3) CHARS="[:digit:]" ;;
    *) _invalid_ chars ;;
esac

_output_
