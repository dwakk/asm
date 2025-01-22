# C to Assembly: A Learning Project  

This repository is a personal project aimed at learning low-level programming by rewriting common C functions in assembly. As a student, my focus is on understanding the mechanics of assembly language and how high-level concepts in C translate to low-level implementations.  

## Project Goals  

- Gain hands-on experience with assembly language (NASM).  
- Understand the inner workings of common C functions by re-implementing them in assembly.  
- Explore the interaction between assembly and C through function calls and linking.  
- Learn and practice using tools like `nasm`, `gcc`, and `make`.  

## Repository Structure  

```
.
├── bin/           # Compiled executables
├── obj/           # Object files
├── src/           # Source code
│   ├── foo/       # Implementation of a generic function 'foo' in C and assembly
│   │   ├── foo.c  
│   │   ├── foo.asm  
└── README.md      # Project documentation
```

## How It Works  

Each function is implemented in both C and assembly. The corresponding C file (`foo.c`) serves as a test harness, calling the assembly function (`foo.asm`) to observe its behavior and output.  

## Build and Run  

This project uses a `Makefile` for building. Each function is treated as an independent target, allowing for easy compilation and testing.  

### Requirements  

- **NASM**: For assembling the `.asm` files.  
- **GCC**: For compiling and linking the `.c` and `.o` files.  

### Commands  

- Build a specific function (e.g., `foo`):  
  ```bash
  make foo
  ```  

- Clean up all compiled files:  
  ```bash
  make clean
  ```  

- The compiled executables will be located in the `bin/` directory.  

## Notes  

- This project is purely educational and is not intended to produce fully functional or optimized code.  
- The focus is on learning and experimentation rather than performance or robustness.  
- The C files in this project only call their corresponding assembly functions to demonstrate their functionality.  
- Contributions or suggestions are welcome, but keep in mind the primary purpose is learning.  

## Future Plans  

- Implement additional C functions and their assembly counterparts.  
- Explore optimizations and advanced assembly features once foundational knowledge is solidified.  

## Acknowledgments  

Special thanks to the online resources, forums, and textbooks that have guided me through this journey into low-level programming.  

---  

Feel free to explore and experiment with the code! Feedback is always appreciated.  
