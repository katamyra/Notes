#import "../../../template.typ": *

= Digital Logic Structure
== Sequential Logic

=== K-Maps 
#note[
  *Karnaugh maps* are an easy way to make a truth table and convert it into a circuit using the least number of gates.
]
==== K-Maps Setup
Karnaugh maps are setup using gray code, which means that only one variable changes between two-adjacent cells. If you examine the values across the top from left to right, or down the side from top to bottom, you'll also see that the activated bits follow a pattern like 00, 01, etc 

#definition(footer: "In this case, we differ by only 1 bit at time. So for example, 01 -> 10 is NOT a gray code, because 2 bits had to be flipped")[
  A *gray code* is a binary numerical system that is ordered such that two subsequent values only differ in one bit. It is also known as reflected binary code because the codes are reflected in the first and last n/2 values
]

==== K-Maps Grouping Rules
+ We want the biggest groups where the size of the groups are a power of 2
+ We want the least number of groups
+ We can build groups with adjacent cells including wrapping around corners

If something doesn't matter we can just put it to X and we can group with it if wanted.

You make the biggest groups possible, and you analyze the groups for what values don't change and use that to create a logical expression. From there, it is easy to turn the logical expression into circuits.

=== Level Triggered Logic
There are two types of sequential logic: *level triggered logic and edge triggered logic*. Both rely on the signals of a clock, which is a circuit component that oscillates between a 1 and 0 at a set frequency to help synchronize operations in a circuit.

The difference is when the output changes based on the input signal. In *level triggered logic*, when the clock has a 1 output, the circuit output will match the input, and when the clock has 0 output, the circuit output stays the same. 
Think of the changes happening when the clock is 1 and level. 
#blockquote[
  RS Latches, D Latches, and memory are all level triggered
]
