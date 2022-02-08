#!/bin/bash

# Andrea Tosi   05/10/21    v0.3

# gccr : "gcc run". A little shortcut to not be overloaded with binary files
# Compile file given with gcc, execute the file and deletes it.

suff=".c"
pref="-"
output=${1%$suff}
compiler_arg1=""
program_arg1=""
compiler_arg2=""
program_arg2=""
compiler_arg3=""
program_arg3=""
compiler_arg4=""
program_arg4=""

case "$#" in
	2)
	# arg1
	if [[ $2 =~ \+lm ]]
	then
		compiler_arg1=${2/\+/$pref}
	else
		program_arg1=$2
	fi
	;;

	3)
	# arg1
	if [[ $2 =~ \+* ]]
	then
		compiler_arg1=${2/\+/$pref}
	else
		program_arg1=$2
	fi
	# arg2
	if [[ $3 =~ \+* ]]
	then
		compiler_arg2=${3/\+/$pref}
	else
		program_arg2=$3
	fi
	;;

	4)
	# arg1
	if [[$2 =~ \+*]]
	then
		compiler_arg1=${2/\+/$pref}
	else
		program_arg1=$2
	fi
	# arg2
	if [[$3 =~ \+*]]
	then
		compiler_arg2=${3/\+/$pref}
	else
		program_arg2=$3
	fi
	# arg3
	if [[$4 =~ \+*]]
	then
		compiler_arg3=${4/\+/$pref}
	else
		program_arg3=$4
	fi
	;;

	4)
	# arg1
	if [[$2 =~ \+*]]
	then
		compiler_arg1=${2/\+/$pref}
	else
		program_arg1=$2
	fi
	# arg2
	if [[$3 =~ \+*]]
	then
		compiler_arg2=${3/\+/$pref}
	else
		program_arg2=$3
	fi
	# arg3
	if [[$4 =~ \+*]]
	then
		compiler_arg3=${4/\+/$pref}
	else
		program_arg3=$4
	fi
	# arg4
	if [[$5 =~ \+*]]
	then
		compiler_arg4=${5/\+/$pref}
	else
		program_arg4=$5
	fi
	;;
esac

# commands
gcc $1 -o $output $compiler_arg1 $compiler_arg2 $compiler_arg3 $compiler_arg4 &&
./$output $program_arg1 $program_arg2 $program_arg3 $program_arg4 &&
rm $output
