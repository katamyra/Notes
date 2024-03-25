#import "../../template.typ": *
#show: template.with(
  title: [CS 2110 Quiz 3 Study Guide],
  authors: (
    (
      name: "Krish Katariya",
    ),
  ),
)

= Pseudo-Ops (Assembler Directives)
#note[
 * Pseudo-ops* (or assembler directives) do not refer to operations performed by assembly, but rather it is a message from the assembly language to the assembler to help the assembler during its process. 
]

== .ORIG

#definition[
  *.ORIG* tells the assembler where in memory to place the LC-3 program.
  So .ORIG x3050 says place the first LC-3 ISA instruction at location x3050
]

== .FILL
#definition[
  *.FILL* tells the assembler to set aside the next location in the program and initialize it with the value of an operand. The value can either be a number or label.
]

== .BLKW

#definition[
  *.BLKW* tells the assembler to set aside some number of sequential memory locations (BLocK of Words) in the program. 

  A common use of BLKW is to set aside a piece of memory and then have another section of code produce a number and store it at that memory. 
]

== .STRINGZ 

#definition[
  *.STRINGZ* tells the assembler to initalize a sequence of n+1 memory locations. It takes in a string as an argument, enclosed in double quotes.

  `.STRINGZ "Hello, World!"`
]

== .END 
#definition[
  *.END* tells the assembler it has reached the end of the program and need never look at everything after  
]
= Two Pass Process 

In order to work properly, assembly has to go through the code in two separate passes, otherwise it will encounter errors with not understanding symbolic names or labels, such as `PTR`.

#theorem[
  The objective of the *first pass* is to identify the actual binary addresses corresponding to symbolic labels. These set of correspondences is stored in the _symbol table_. In the first pass, we construct the symbol table. 

  In pass two, we translate the individual assembly language instructions into their corresponding language instructions. 
]
For example:
```yasm
GETCHAR ADD R3, R3, #-1
        LDR R1, R1, #0
        BRnzp TEST
```

In this case, if we only had a 1 pass technique, assembly wouldn't be able to recognize what `GETCHAR` and `TEST` refer to, so it would fail. Instead on the first pass we add `GETCHAR` & `TEST` to the symbol table with their respective address. 

Now on the second pass, we can go through each line and substitute a symbol for its value in the symbol table.

= Subroutines 

#definition[
  *Subroutines* are program fragments that are reusable, similar to functions in other languages. 
]

The *call/return mechanism* allows us to execute instruction sequences only once by requiring us to include it as a subroutine in our program only ones. 

THere are two instructions that use this call/return mechanism:


== JSR(R)
#definition[
  *JSR(R)* calls the subroutine. 
  - It loads the PC with the starting address of the subroutine and it loads R7 with the address immediately after the address of the JSR(R) instruction. 

  R7 now holds the address we want to come back to after our subroutine is done, also known as the _return linkage_. 
]
#theorem[
  JSR(R) uses two addressing modes for computing the starting address of the subroutine, PC-Relative addressing or Base Register addressing.

  You can use JSR/JSRR depending on which mode you are using. 

]

JSR uses PC offset, while JSRR uses baseR offset. 

#note[
  Because subroutines destroy/overwrite the values in registers, we must save the values in the registers we are using, and then restore them after. 
]

= Stack 

#definition[
  *Stacks* are _LIFO_, last in first out 
]

The stack consists of a *stack pointer*, which keeps track of the top of the stack. We use R6 as the stack pointer. 

== Stack Buildup

Stack buildup is the first half of the full calling convention.

*Caller Prepares the Subroutine*
+ Push arguments to the stack in reverse order (from last arg to first)
+ JSR/JSRR to subroutine 

*Callee preserves values and allocates space*
+ Allocate space for return value 
+ Store the return address 
+ Store old frame pointer(R5)
+ Set frame pointer to be the space above the old frame pointer (which holds the first local variable)
+ Allocate space for local variable 
+ Store R0-R4


== Stack Teardown

*Callee prepares for return* 
+ Store return value in previously allocated space 
+ Restore R0-R4 to previous value and pop from stack 
