
# assembly-projects

A collection of small assembly language projects to learn and practice low-level programming.

## Projects Included

*   **Hello Program** A program that simply asks for your name and greets you. (Completed 2025-02-XX)

## Usage

1.  Clone the repository: `git clone https://github.com/QuarterSalt/assembly-projects.git`
2.  Navigate to the project directory: `cd assembly_projects`
3.  Assemble the code: `nasm -f elf32 hello.asm`
4.  Link the object file: `ld -m elf_i386 hello.o -o hello`
5.  Run the executable: `./hello`

## Screenshots
![image](https://github.com/user-attachments/assets/81896a52-51dd-4710-96eb-999ded63cd56)
- Open the directory, wherever it is for you (for me its in /home/quartersalt/assembly_projects/)
![image](https://github.com/user-attachments/assets/79601a3a-d357-4a8d-8e65-6d6256ed4fe4)
- Running nano hello.asm opens a text editor in which you can make changes to the code
![image](https://github.com/user-attachments/assets/ec73b101-13be-48d9-a5d3-3f4013d14d0f)
- Once you press enter, you should have a window open up for you
- **IMPORTANT NOTE**: Assembly is a language that's very different from most, so here's what's important to know (I'm not going over everything)
1.  I'm working with the NASM notaion
2.  A semicolon (';') indicates a comment; similar to // or # in other languages
3.  The text's in red are like checkpoints, you can tell the program to go to a specific checkpoint and it runs that code
4.  A "seciton" is for initializing certain things before the code runs, like variables, where the program should start when it runs, and to reserve X amount of memory for varbiable X
5.  A line of executable code usually consists of 3 things:
  - the first three characters are to tell the computer what kind of task you want to execute
  - the next three characters are to specify the register you'd like to access
  - the last part of the line is the numerical code that the register you're accessing will use
  - example: mov rax, 1
      - in this example, mov is telling the computer you want to mov data (the numerical code, so 1 in this case) to the register that follows (rax)
      - what this will do, is make a system call (syscall) and tell the computer thatr you want to print something to the console

## Contributing

Feel free to submit pull requests with improvements or new assembly projects!

