#import "../../../template.typ": *
#show: template.with(
  title: [CS 2200 Exam 2 Notes],
  authors: (
    (
      name: "Krish Katariya"
    ),
  ),
)
#set text(
  fill: rgb("#04055c")
)

= Interrupts, Exceptions, and Traps 

== Synchronous vs Asynchronous
#definition[
  *Synchronous* events are events that are part of the intended events that are supposed to happen.

  *Asynchronous* events are events that are unexpected or not part of the plan.
]

== Interrupts 

#definition[
  An *interrupt* is the mechanism by which devices catch the attention of the processor. This is an unplanned discontinuity from the unplanned program and is therefore *asynchronous*. 
]


== Exceptions

#definition[
  An *exception* is when the program unintentionally performs certain illegal operations such as divide by zero or follow an executing path unintended in the program specification.
]

== Traps 

#definition[
  A *trap* is when people make _system calls_ to read/write files or for other such services from the system.

  In this case, the program is accessing parts of the system whose integrity affects a whole community of users, which is why we need to do them through traps. 

  This allows the program to _fall into_ the operating system, which will then decide what the user program wants and executes it.
]

== Dealing with Program Discontinuities 
Most of what the processor has to do to deal with program discontinuity is the same regardless of the type. A *handler* is the procedure that is executed when a discontinuity occurs, and the code for the handler is very similar to writing other procedures. 

#definition[
  The *interrupt vector table* (IVT) stores a unique number (_vector_) which serves as a unique index into the IVT to get the correct handler.
]
In the case of traps and exceptions, the hardware automatically generates this vector internally, using the *exception/trap register* (ETR). For example, when the divide by zero error happens, the unique number associated with divide by zero errors will be placed in the ETR.


The partnership between OS and hardware for dealing with program discontinuities:
+ The architecture may itself define a set of exceptions and specify the numbers (vector values) associated with them. These are usually due to runtime errors encountered by program execution.
+ The operating system may define its own set of traps (systems calls) and the associated numbers 
+ The operating system sets up the IVT at boot time with the address of handlers for dealing with program discontinuities 
+ The hardware detects external interrupts and receives the vector value corresponding to the interrupting devices 
+ The hardware uses the vector value as an index in IVT to retrieve the handler address and transfer control of the currently executing program 

== Modifications to FSM (INT) 

The FSM now checks at the point of completion of an instruction if there is a pending interrupt. If there is (INT=y), _then the FSM transitions to the INT macro state_, and if not it resumes to Fetch. 

=== INT Macro State 

#theorem[
  
+ First, we have to save the current PC value somewhere. We reserve the processor register *k0* (general purpose register 12) for this purpose. The INT macrostate saves PC into *k0*
+ We receive the PC value of the handler address from the device, load it into the PC and go to FETCH. 

]

#theorem[
  *Interrupt handler job*:
  - Enable interrupts 
  - Save processor registers 
  - Disable interrupt
]
=== Cascaded Interrupts 

If there is an interrupt during an interrupt, the value saved in *k0* will get overwritten and it will lose track of the original PC value. This are called *cascaded interrupts*.

To fix cascaded interrupts we modify our INT / FSM implementation a little bit.

We add two instructions: *disable interrupts* and *enable interrupts*. Now, the handler should save the return address to the original program while the interrupts are still disabled. Once it does that, it can enable interrupts to ensure that the processor does not miss interrupts that are more important. Before leaving the handler, it restores *k0* with interrupts disabled.

#note[
  Note: it isn't always necessary to entertain a second interrupt while working on the first one. The partnership between handler code and the processor hardware determine how to handle multiple interrupts and there are two options:
  + Ignore the interrupt for a while 
  + Attend to the new interrupt immediately.

  Sometimes this is determined by having multiple interrupt levels of different priority.
]

== RTI 

In order to manage handling interrupts easier, we cannot just use `Enable Interrupts` and `J  $k0$`. What if an interrupt happens between the two instructions?

So we define a new instruction: *Return from Interrupt (RETI)*

#definition[
  Return from interrupt is _atomic_, meaning this instruction executes fully before any new interrupts can occur. This loads PC from K0 and enables interrupts.

]

== Datapath Details for Interrupts 

The new bus also connects the processor to the memory and more importantly other I/O devices. 
- There is a wire labeled INT on the bus. Any device that wishes to interrupt the GPU asserts this line. Any number of devices can simultaneously assert this line to indicate their intent to talk to the processor, using a concept called _wired-or_ logic


#theorem[
  The handshake between the processor and the device for interrupts:
  + The device asserts the INT line whenever it is ready to interrupt the processor
  + The processor upon completion of the current instruction checks the INT line (shown as check INT=y/n in the FSM) for pending interrupts 
  + If there is a pending interrupt, then the processor enters the INT macro-state and asserts the INTA line on the bus 
  + The device upon receiving INTA places it vector on the data bus
  + The processor receives the vector and looks up the entry in the IVT
  + The processor completes the action in the INT macro-state, saving the current PC in k0 and loading the PC with the value from the IVT
]

== Stack for saving/restoring 

How does the handler know which part of memory is to be used as a stack? The interrupt may not even be for the currently running program.

For this reason, we have two stacks: a *user stack* and a *system stack*. Quite often, the architecture may designate a particular register as the stack pointer. Upon entering INT macrostate, the FSM performs _stack switching_. 

Stack switching: 
+ *Duplicate Stack Pointer*
  - We duplicate *\$sp* to have one for use by the user program and one for use by the system. THe state saving in the interrupt handler will use the version of sp based on what mode they are curently in.
+ *Privileged mode*
  - We now introduce a *mode bit* into the processor. Based on the value of the bit, we are either in the user or kernel mode. 
  - Before returning to the user program, RETI instruction sets the mode bit back to "user" to enable the user program to go back to using the user stack as it resumes its execution. 
  - The mode bit also makes it so that the new 3 instructions we added to support interrupts cannot be run by any program. We call these *privileged instructions*. An interrupt handler is part of teh OS and runs in the kernel mode, so if a user program tries to use these instructions it will lead to an illegal instruction trap.

= Processor Speed Metrics
The two performance metrics that we are interested in are:
+ *Space Metric* (memory footprint)
  - The overall running time of the program
+ *Time metric* (execution time)
  - The total space the program takes 

The ISA of the processor has a bearing on the memory footprint of the program. 

` Execution time = (sum_(j=1)^n CPI_j) * clock cycle time`

` Execution time = n * CPI(avg) * clock cycle time`

#definition[
  *Instruction frequency* is the metric for understanding how often a particular instruction occur in programs. 

  *Static frequency* refers to the number of times a particular instruction occurs in the compiled code. This has an impact on the memory footprint, so if we find an instruction appears a lot in a program, then we may try to optimize the amount of space it occupies in memory by clever coding techniques. 

  *Dynamic frequency* refers to the number of times a particular instruction is executed when the program is actually run. So if we find that the dynamic frequency of an instruction is high we may make enhancements to the datapath and control to ensure that the GPI taken for its executing is minimized. 
]

== Benchmarks 

#definition[
  *Benchmarks* are a set of programs that are representative of the workload for a processor. For example, for a processor used in a gaming console, a video game may be the benchmark program. 

  *Kernels*  of real programs are used as benchmarks. Kernels are small, focused pieces of code that represent a core computational task or algorithm commonly found in real world applications.
]

What might cause static frequency and dynamic frequency differ: 
- A loop or repeating segment of a program or a branch around code can cause instructions inside the loop/segment to have a higher or lower dynamic frequency (because they get executed more or fewer times) than their static frequency

Some ways to evaluate processor performance: 
+ *Total execution time*
+ *Arithmetic mean (AM)* is used if you have a set of programs that you want to run at different times but not all at the same time. AM is an average of all the individual program execution times. 
+ *Weighted arithmetic mean (WAM)* is useful if you have a know the frequency at which you run the programs.
+ *Geometric mean (GM)* is the pth root of the product of p values. So P1 = 100 and P2 = 1, GM = root 2(100*1) = 10. This removes the bias from arithmetic mean.
+ *Harmonic mean (HM)* is another useful composite metric which is found by taking the arithmetic mean of the reciprocals of the values, and then taking the reciprocal of that. 


= Pipelining
A radically different approach to improving the processor performance is not to focus on the _latency_ for individual instructions but on _throughput_, or the number of instructions executed by the processor per unit time. 

Basically latency answers how many clock cycles does the processor take to execute 1 instruction but throughput answers how many instructions can the processor executed in each clock cycle 

#image("Images/PipelineDiagram.png")

IF = FETCH 
- This stage fetches the instruction pointed to by the PC from I-mem and places it into IR. It also increments the current PC in readiness for fetching the next instruction
- Requires a PC, ALU, and I-MEM 

ID/RR = Decode instruction / read register concents 
- This stage decodes the instruction and reads the register files to pull out two source operands (more than what may actually be needed depending on the instruction)
- To enable this functionality, the register file has to be dual ported.  
- Since this stage contains logic for decoding the instruction as well as reading register file, its called ID/RR
- We need the DPRF 

EX = Execute 
- This stage does all the arithmetic and/or logic operations that are needed for processing the instructions

MEM = fetch / store memory operands 
- This stage either reads from or write to the D-MEM for LW and SW instructions, respectively. Instructions that do not have a memory operand wil not need the operations performed in this stage.
- Uses D-MEM 

WB = write to register
- This stage writes the appropriate destination register (Rx) if the instruction requires it. Instructions in LC-2200 that require writing to a destination register include arithmetic and logic operations as well as load.
- DPRF

Every stage works on the partial results generated in the previous clock cycle by the preceding stage.

#note[
  We need buffer register to store / isolate stage state, noted as *DBUF* for decode buffer. Basically since each stage works on different instructions, once a stage has completed its stage it places the results in a buffer to be picked up in the next clock cycle.
]

In the steady state, there are 5 instructions in different stages of processing in the pipeline, which makes the CPI effectively 1. 

The key points to note in designing a pipeline-conscious architecture are:
- Need for a symmetric instruction format (the locations of register specifiers, sizes, positions of offsets, etc all have to be in the same location)
- Need to ensure equal amount of work in each stage, leading to optimal clock cycle time

#definition[
  *Data hazards* occur when data is changed in one stage of the pipeline, potentially affecting instructions in other stages. 

  There are 3 kinds of data hazards:
  - Read after Write (RAW): reading a value that sequentially just got written
  - Write after Read (WAR): writing a value that sequentially just for read
  - Write after Write (WAW): write a value that sequentially just got written as well

  If its within 4 instructions any of these can happen(?) like I1 -> I4 
]

#image("Images/DataHazards.png")


#definition[
  *Control Hazards* occur as a result of instructions executing non-sequentially. 

  One example is using a BEQ instruction, changing the value of PC but already having assumed the branch wasn't taken. 

  The solution: flush instructions out of the pipeline if we are wrong about a branch being taken/not taken. 
]