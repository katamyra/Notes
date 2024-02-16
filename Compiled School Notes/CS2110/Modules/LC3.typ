#import "../../../template.typ": *

= The LC-3 

== Memory Organization 
The LC-3 memory has an address space of $2^16$ locations and an addressability of 16 bits. For the LC-3, we refer to 16 bits _as one word_, and we say that the LC-3 is _word addressable_

#note[
  Reminder (because I forgot lol):

  *addressability*: the amount of bits stored for each locations
  *address space*: the amount of unique storage locations
]

== Registers 

#definition[
  *Registers*: used to store data temporarily because if often takes more than one clock cycle to access memory/do other tasks. 
]

The LC-3 has 8 unique registers, each identifiable by a three-digit register number. 

== The Instruction Set 

Instructions are made of two things, their *opcode* (what the instruction is asking the computer to do) and its *operands* (who the computer is expected to do it to)

#definition[
  *Instruction Set*: defined by its opcodes, datatypes, and addressing modes.
]

#example[
  The INSTRUCTION [ADD R2, R0 R1] has an opcode of ADD, one addressing mode (register mode}, and one data type (2's complement), In this case we define two registers from which to add to and a register to store the value in. 
]

Other instructions: AND, BR, JMP, JSR, LD, STI, etc 

Theres too many maybe ill desscribe them if its required. 

== Opcodes 

The LC-3 ISA has 15 instructions, each defined by its unique opcodes, meaning 4 bits are used for the opcode. 

#note[
  The LC3 only has 15 opcodes, even when there are 16 possibilities. The code 1101 has been left unspecified. 
]

There are three different kinds of opcodes:
+ *Operates*: process information 
+ *Data movement*: move information between memory and the registers and between them and I/O 
+ *Control*: change the sequence of instructions that will be executed

== Data Types 

Every opcode will interpret the bit patterns of its operands according to the data type it is designed to support. For ADD opcode, this is 2's complement. 

== Addressing Modes 
#definition[
  *Addressing Modes*: a mechanism is a mechanism for specifying where the operand is located.
]

An operand can generally be found in one of three places: 
+ In memory 
+ In a register 
+ As a part of the instruction 
  - If part of the instruction, we refer to it as a _literal_ or as an _immediate operand_. 

The LC-3 supports five addressing modes, immediate, register, and three memory addressing modes (PC-relative, indirect, and Base+offset)

#definition[
  *PC relative* operands are calculated relative to the Program Counter value, For example `LD R0, 50(PC)` means to load the content of memory at an address calculated by adding 50 to the PC into register R0
]
#definition[
  *Indirect Addressing* operands involve accessing memory indirectly through a pointer.
]
#definition[
  *Base+offset Addressing* operands are calculated by adding a base value (usually in a register) to some offset. Useful for accessing elements of arrays/structures in memory
]

== Condition Codes 

The LC-3 has three single bit registers that are individually set each time one of the 8 general purpose registers (GPR's) is written into as a result of execution of one of the operate instructions/load instructions. 

#definition[
  The three single bit registers are the *N, Z, and P* registers corresponding to negative, zero, and positive. These three are referred to as *condition codes* because the condition of thehose bits are used to change the sequence of execution of instructions in a program. 
]
