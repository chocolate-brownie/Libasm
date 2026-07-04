### 2.7.1 Quiz Questions

Below are some quiz questions.

1) Draw a picture of the Von Neumann Architecture.

```
[CPU]                            [primary storage]
  |                                     |
--------------------------------------------------------------------
|                BUS Interconnection
--------------------------------------------------------------------
  |                                     |
[input and output devices] [secondary storage (ssd, disk drive etc)]
```

2) What architecture component connects the memory to the CPU?
- "bus interconnection" responsible for this task

3) Where are programs stored when the computer is turned off?
- programs can be stored inside the secondary storage 

4) Where must programs be located when they are executing?
- program instrutions/data must be inside the RAM before the CPU

5) How does cache memory help overall performance?
- for repeatable memory access we can store small references in the cache memory
using this reference cpu can directly access the momory instead of going through the
bus to main memory thats a **cache hit** if the mem is not present
in the cache cpu must access the normal ram thats a **cache miss**. Reading data from
cache is faster than reading from main memory since the process does not involve
going through the bus

6) How many bytes does a C++ integer declared with the declaration int use?
- 4 bytes

7) On the Intel X86-64 architecture, how many bytes can be stored at each address?
- 8 bytes

8) Given the 32-bit hex 004C4B4016 what is the:
    1. Least Significant Byte (LSB): 40
    2. Most Significant Byte (MSB): 00

9) Given the 32-bit hex 004C4B4016, show the little-endian memory layout showing
each byte in memory.
```
Memory address  |   Stored byte
&x + 0          |   0x00 LSB
&x + 0          |   0x4C
&x + 0          |   0x4B
&x + 0          |   0x40 MSB
```

10) Draw a picture of the layout for the rax register.
```
                     | <-   eax     ->|
                            | <- ax ->|
rax [                |      | ah | al ]
```

11) How many bits does each of the following represent:
    1. al: 8
    2. rcx: 64
    3. bx: 16
    4. edx: 32
    5. r11: 64
    6. r8b: 8
    7. sil: 8
    8. r14w: 16

12) Which register points to the next instruction to be executed?
- Instruction pointer register (RIP)

13) Which register points to the current top of the stack?
- Stack pointer (RSP)

14) If al is set to 0516 and ax is set to 000716, eax is set to 0000002016, and rax is set
to 000000000000000016, and show the final complete contents of the complete
rax register.

15) If the rax register is set to 81,985,529,216,486,89510 (123456789ABCDEF16),
what are the contents of the following registers in hex?
    1. al
    2. ax
    3. eax
    4. rax
