
# To generate assembly language code
gcc file.c -S file.asm

# To generate assembly code in intel format
gcc -O0 -S -masm=intel practice.c -o practice_O0.asm

-O0: to disable the advanced optimization such that the assembly correspondence of C could be visible easily 
-S: to generate assembly code
-o: to redirect output to a file
-masm=intel: to generate the assembly code in intel format (by default gcc generates AT & T format becaue gcc comes from bell lab)


#using assembler as
as -g practice_intel.asm -o practice_intel.o
as -g practice_intel.asm -o practice_intel.o


#using ld for linking with standard library
ld -g -o practice_intel practice_intel.o -lc --entry main
ld -g -o practice_intel practice_intel.o -lc --entry main


#To linking the files using gcc
gcc -c -g practice_intel.asm -o practice_intel.o
gcc -g practice_intel.o -o practice_intel


#To dump the object code:
gcc practice.c -o practice.o
objdump -S pratice.o # The main section of the code correspond to the user written code

#------------------------------------------------------------------------

#How to write C program:
 1) Try to avoid using #include<stdio.h> which means don't use printf, scanf, and getch etc, this will make the final code very bulky which
    may be hard to understand at this point.

 2) Declare some of the variables as register and few other (the output variables) as plain integer, double, long, or float


#Preparing the object file from assembly programming for debugging:

Step 1: Generate the assembly program .asm file from .c:
        gcc -O0 -S -masm=intel practice.c -o practice_intel.asm

Step 2: gcc -c -g practice_intel.asm -o practice_intel.o
        #You might get a warning related to Linking, ignore this right now.
        #Be sure you are using -g at this stage.

Step 3: gcc -g practice_intel.o -o practice_intel
        #the practice_intel is the final executable file that will go to ddd debugger.

#How to trace the value of each register using ddd

Step 1) ddd your_object_file
Step 2) break 1
Step 3) run 
Step 4) click steps from progam menu 
        or 
        just press F5 
        or 
        type step in command window of ddd

Step 5) open Registers from status menu
        Click on All registers to view all the available registers
Step 6) proceed step by step and observe the value change in Register window

Unknown situation 1: if the toosl hang the only way to get going is to do the following: 
                     1) remove .ddd directory from your home (ie ~/)
                     2) restart the ddd       
 
Opening different window: from the view menu you can open different windows.

Reference: https://www.gnu.org/software/ddd/manual/html_mono/ddd.html

#----------------------------------------------------------------------------------------





