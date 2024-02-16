#import "../../../template.typ": *

= The Von Neumann Model 

== Basic Components

A *computer program* consists of a set of instructions, each specifying a well defined piece of work for the computer to carry out. The *instruction* is the smallest piece of work specified in a computer program. 

#theorem[
  The *von Neumann model* consists of 5 parts:
  + Memory 
  + Processing Unit
  + Input 
  + Output 
  + Control Unit 
]

== Memory 

A typical memory for today's computer systems is $2^34$ by 8 bits, meaning it has 2^34 distinct memory locations (its address space), with 8 bits of data (its addressability).

#definition[
  *MAR*: Memory Address Reader. 
  
  To read the contents of a memory location, we place the address of that location in the MAR, and interrogate the computers memory. The information stored in the location having that address is stored in the *memory data register (MDR)*. 
  
  In order to write to this location instead, we do the same process but with _write enable on_. 
]

== Process Unit 
The actual processing of information in the computer is done at the *process unit*. The simplest processing unit is the *Arithmetic and Logic Unit (ALU)*, which can Add and perform basic bitwise operations. 

#definition()[
  ALU's normally process data elements of a fixed size known as the *word lengths* of the computer, and the data elements are known as the *words*. Most modern day processors have 64 bit word lengths, but LC-3 has a 16 bit word length. 
]

#note[
  Most computers provide a small storage close to the ALU to allow results to be temporarily stored while doing calculations. The easiest form of quick storage is a *register* with the same length as the word length. 
]

== Input and Output 
For the LC-3, our inputs are only the keyboard, and our outputs are only the monitor. 

== Control Unit 
#definition[
  *Control Unit*: the component in charge of making sure all the other parts of the computer play together. The control unit keeps track of where we are within the process of executing a program. 
]
To keep track of which instruction is being executed, the control unit has an *instruction register* which contains that information. 

The control unit also has a *program counter*, which is a register pointing to the "next" instruction to be carried out.

== Instruction Processing

The central idea of computer processing is that the program and data are both stored as sequences of bits in the computers memory, and the program is executed one instruction at a time under the direction of the control unit. 
=== The Instruction 

The most basic unit of processing is the *instruction*. 

There are three types of instructions:

#definition[
  *Operate instructions*: instructions that operate on data. For LC-3, these are ADD,  AND, and NOT instructions
]

#definition[
  *Data movement instructions:* instructions that move information from the processing unit to and from memory to input/output defives. 
]

#definition[
  *Control instructions*: instructions that are necessary for altering the sequential processing of instructions. 
]

=== Instruction Cycle

Instructions are carried out by the control unit in a systematic, step by step manner. There are six sequential phases, each of which requires zero or more steps. 

`FETCH
DECODE
EVALUATE ADDRESS 
FETCH OPERANDS 
EXECUTE 
STORE RESULT
`

#definition[
  *Fetch phase*: obtains the next instruction from memory and loads it into the instruction register (IR) of the control unit. 

  The instructions are stored in computer memory. In order to carry out the work of an instruction, we must identify where it is. The PC contains the address of the next instruction to be processed.

  Steps: 
  + The MAR is loaded with the contents of the PC, and increment the PC
  + The memory is interrogated, which results in the next instruction being placed by the memory into the MDR 
  + The IR is loaded with the contents of the MDR
]
#definition[
  *Decode phase*: examines the instructions in order to figure out what the micro architecture is being used to do. In the LC-3, a decoder figures out which of the 16 opcodes to be used. 
]


#definition[
  *Execute phase*: carries out the execution of the Instruction.
]

There are other phases but we don't really need them for this class (?)

