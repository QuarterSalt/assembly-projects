
# assembly-projects

A collection of small assembly language projects to learn and practice low-level programming.

## Projects Included

*   **Hello Program** A program that simply asks for your name and greets you.

## Usage

1.  Clone the repository: `git clone https://github.com/QuarterSalt/assembly-projects.git`
2.  Navigate to the project directory: `cd assembly_projects`
3.  Assemble the code: `nasm -f elf32 hello.asm`
4.  Link the object file: `ld -m elf_i386 hello.o -o hello`
5.  Run the executable: `./hello`

## Contributing

Feel free to submit pull requests with improvements or new assembly projects!

