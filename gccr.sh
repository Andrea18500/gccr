#!/bin/bash

# Andrea Tosi   05/10/21    v0.1

# gccr : "gcc run". A little shortcut to not be overloaded with binary files
# Compile file given with gcc, execute the file and deletes it.

suff=".c"
output=${1%$suff}
gcc $1 -o $output && ./$output $2 $3 $4 $5 && rm $output