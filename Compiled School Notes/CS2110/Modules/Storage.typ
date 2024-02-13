#import "../../../template.typ": *

== Basic Storage Elements
- The other kind of storage element are those that involve the storage of information and those that do not

=== The RS Latch
#definition[
  The *RS Latch* can store one bit of information, a 1 or a 0. Generally, two 2-input NAND gates are connected such that the output of each is connected to one of the inputs of the other. The other inputs are usually held to be zero. 

  Setting the latch to store a 1 is known as *setting* the latch, while setting the latch to store a 0 is referred to *resetting* the latch
]

#image("../Images/RSLatch.png", width: 100%-200pt)

#definition[
  The *quiescent* (or quiet) state of a latch is the state when the latch is storing a value, either 0/1, and nothing attempts to change that value. 
  
  This happens when S and R are both equal to 1. So as long as the inputs S and R remain as 1, the state of the circuit will not change.
]

#note(footer: "Logic behind setting to 1: If we set S to 0 for a brief period of time, this causes a and thus A to be equal to 1. Since R is 1 and A is 1, b must be 0, This causes B to be 0, which makes a equal to 1 again. Now when we return S to 1, a remains the same since B is also 0, and 1 0 input to a nand gate is enough to make sure that the NAND gate stays at 1.")[
  *Setting the latch to a 1 or 0*

  The latch can be sent to 1 by momentarily setting S to 0, provided that we keep the value of R at 1. 
  Similarly, we can set the patch to 0 by setting R to zero (known as clearing or resetting), provided we keep the value of S at 1. 
]

=== The Gated D Latch
#definition[
  The D latch helps control when a latch is set and when it is cleared. In the following figure, the latch is set to the value of D whenever WE is asserted. When WE is not asserted, the outputs S and R are both equal to 1. 

  When WE is momentarily set to 1, exactly one of the outputs S or R is set to 0 depending on the value of D. If D is set to 1, the S is set to 0, else 
]
#image("../Images/DLatch.png")

== The Concept of Memory
*Memory* is made up of a (usually large) number of locations, each uniquely identifiable and each having the ability to store a value. We refer to the unique memory location as its _address_. We refer to the number of bits of information stored ine ach location as its _addressability_

=== Address Space
#definition[
  We refer to the total number of uniquely identifiable locations as the *memory's address space*. 
]
For example, 2GB memory has two billion memory locations. 

=== Addressability 
#definition[
  *Addressability*: the number of bits stored in each memory location. 
]

== $2^2$ by 3-Bit Memory Example

In this case, the memory has an address space of 4 locations and an addressability of three bits. Since it is $2^2$ memory, it takes two bits to specify the address. We specify it using A[1:0]. Since its addressability is 3, that means in each location, it stores 3 bits worth of information/data. 
#note[
  When specifying a memory location in terms of *A[high:low]*, we are starting from the rightmost spot as index of 0. This means we are looking at the sequence of $h - l + 1$ bits such that high is the leftmost bit number, and low is the rightmost bit number in the sequence. 
]

Access of memory first starts with _decoding the address bits_, using a decoder. We also have WE, which defines whether we are in write-enable mode of not. 

The input of A[1:0] defines what the decoder has to select for the correct _word line_. From there, the decoder outputs a line of 1 which is anded across all three D-latches producing the output of that position. 

== State 
#definition[
  *State*: a snapshot of that system in which all relevant items are explicitly expressed. 

  Ex: for a lock, the state would be open, or 0/1/2 correct operations leading to opening the lock. 
]

#definition[
  A *finite state machine* consists of the following elements 
  + A finite number of states 
  + A finite number of external inputs 
  + A finite number of external outputs 
  + An explicit specification of all state transitions 
  + An explicit specification of what determines each external output value
]

The state machines we have talked about so far are *asynchronous*, because there is no fixed amount of time in between when these inputs should be fed into the state machine. On the other hand, a *synchronous* state machine (such as most computers) have a fixed amount of time in between inputs. 

#note[
  The control for the fixed time between state machine changes is controlled by a clock, _whos values alternate between 0 volts and some specified fixed voltage_
]

== Datapath of LC-3
#definition[
  *Datapath of the LC-3* consists of all the logic structures that combine to process information at the core of the computer. 
]