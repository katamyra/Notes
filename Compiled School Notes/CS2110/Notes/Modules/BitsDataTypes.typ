#import "../../../../template.typ": *

= Bits, Data Types, and Operations 

== Bits
#definition(footer: "In reality, electronic circuits differ from voltages close to zero to voltages far from zero")[
  *Bits*, or _binary digits_ represent either the presence (1) or absence of a voltage (0). One wire can differentiate between a zero or one, but in order to differentiate a large number of distinct values and to assign them unique representations, we need a large number of bits. 
]
== Data Types 
Using bits, there are many different ways to represent the same value. For example, to represent 5, you can have the number 5, or five fingers held up, 5 tally marks, the string 5, roman numerals, etc. 

#definition[
  *Data type*: a particular representation where operations in the computer can operate on information encoded in the representation. 
]
=== Unsigned Integers 

#definition[
  *Unsigned Integers*: data type with no sign, only a magnitude.
]

We can represent unsigned integers as strings of binary digits. To do this we use the binary system, similar to the decimal system. 

#note[
  Unsigned integers are useful when we know that we know for sure that we don't need negative numbers. 
]

#theorem[
  *Range for unsigned integers*: 0 to $2^k-1$
]
