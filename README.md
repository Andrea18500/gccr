# gccr - Shortcut compiler for C
A little shortcut to not be overloaded with binary files when compiling with **gcc** on **unix**.

gccr stands for "gcc run", it compiles the file given to gcc, execute the executable and deletes it, avoiding you to be overloaded with two files for every program you write.
It support also options for handling arguments to the file and to the compiler.

## How to Install
Simply compy and paste this command and press enter (^.^)
Executing the following command in your terminal will run the installer, you can be in whatever directory you want.
```
sudo apt install gcc && git clone https://github.com/Andrea18500/gccr.git && chmod u+x gccr/installer.sh && gccr/installer.sh
```
The installation is completed.

If something went wrong **restart the terminal** first, then check the *issues* section. If nothing works write me at this email: andrea18500@hotmail.it

## How to use
The format of the command is simply:
```
gccr name_of_your_file.c
```
If you are not in the same folder you have to specify the path to the file.

From version 0.3 is possible to send **up to four arguments in total**, to both the compiler (gcc) and your program:
- Arguments that have to be passed to the *compiler* must start with "+" instead of the usual "-".
- Arguments without the "+" will be sent to the *program*.
Example
```
gccr path/to/name_of_your_file.c +lm file_input.txt file_output.txt
```
In this example we added the ```-lm``` flag to tell *the compiler* we want to use the math library and the rest of the arguments (the two files) wil be passed to *the program*.

## Issues
- v0.3
  - There could be some issues during installation, if so:
    1. Check if you are admin by running ```sudo echo ok``` and enter your password, if it prints *ok* you are admin.
    2. Run again the installation command
    3. Try to delete the folder gccr that you have downloaded using ```rm -r -f gccr```.
    4. Run again the installation
    5. Try re installing gcc by running: ```sudo apt update``` and ```sudo apt install build-essential```
    6. Repeat from passage a.

For every other issue contact me: andrea18500@hotmail.it

# Versions
- v0.3.1
  - Upgraded the installer. Added a new update feature. From now on pasting the same command as the installation will run an utility that will automate the process.
- v0.3
  - Added support for up to 4 arguments in total. Now arguments starting with "+" instead of "-" will be send to the compiler. Arguments without the "+" will be sent to the program.
- v0.2
  - Added support for up to 4 arguments
- v0.1
  - First version
  - Basic features
  - Work only on unix (tested on ubuntu, raspbian and wsl)
