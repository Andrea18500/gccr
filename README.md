# gccr - Shortcut compiler for C
A little shortcut to not be overloaded with binary files when compiling with **gcc** on **unix**.

gccr stands for "gcc run", it compiles the file given to gcc, execute the executable, add the arguments passed and deletes the it, avoiding you to be overloaded with two files for every program you write.

## How to Install
A folder will be downladed, after the installation you can delete it.
Execute the following command in your terminal, you can be in whatever directory you want.
```
sudo apt install gcc && git clone https://github.com/Andrea18500/gccr.git && chmod u+x gccr/installer.sh && gccr/installer.sh
```
Then **restart the terminal**.

Installation completed.

If something went wrong check the *issues* section first and then write me at this email: andrea18500@hotmail.it

## How to use
The format of the command is simply:
```
gccr name_of_your_file.c
```
If you are not in the same folder you have to specify the path to the file.

## Issues
- v0.2
  - There could be some issues during installation, if so:
    1. Check if you are admin by running ```sudo echo ok``` and enter your password, if it prints *ok* you are admin.
    2. Run again the installation command
    3. Try to delete the folder gccr that you have downloaded using ```rm -rf gccr```.
    4. Run again the installation
    5. Try re installing gcc by running: ```sudo apt update``` and ```sudo apt install build-essential```
    6. Repeat from passage 1.

For every other issue contact me: andrea18500@hotmail.it

# Versions
-v0.2
  - Added support for up to 4 arguments
- v0.1
  - First version
  - Basic features
  - Work only on unix (tested on ubuntu, raspbian and wsl)
