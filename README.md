# gccr - Shortcut compiler for C
A little shortcut to not be overloaded with binary files when compiling with gcc.

gccr stands for "gcc run", it compiles the file given with gcc, execute the file and deletes the executable, avoiding you to be overloaded with two files for every program you write.

## How to Install
A folder will be downladed, after the installation you can delete it.
Execute the following command in your bash, you can be in whatever directory you want.
```
git clone https://github.com/Andrea18500/gccr.git && chmod u+x gccr/installer.sh && gccr/installer.sh
```
Then **close every terminal** you have opened.
Done.

If something went wrong check the *issues* section first and then write me at this email: andrea18500@hotmail.it

## How to use
The format of the command is simply:
```
gccr name_of_your_file.c
```
If you are not in the same folder you have to specify the path to the file.

## Issues
- v0.1
  - In the current version arguments that has to be passed to the file are not   supported.
  - There could be some issues during installation, if so:
    - Try to delete the folder gccr that you have downloaded using ```rm - r gccr``` answering ```y``` EVERY TIME. If you miss one ```y``` repeat this step.
    - Run again the installation

For every other issue contact me: andrea18500@hotmail.it

# Versions
- v0.1
  - First version.
