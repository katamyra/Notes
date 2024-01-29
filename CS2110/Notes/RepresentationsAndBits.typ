#set text(
  font: "New Computer Modern",
  size: 13pt
)
#set page(
  paper: "us-letter",
  header: align(right)[
    Krish Katariya
  ]
)
#set par(
  justify: true,
  leading: 0.70em
)
#set box(
  stroke: black,
  outset: 3pt, 
  radius: 2pt,
)
= CS 2110: Representations and Bits Cheat Sheet
Topics Covered:
- Number Representations
- Bitwise Operations
#let test = [
  Abc
]

_We apply constants (masks) with boolean functions_
#show: rest => columns(2, rest)
#show: rest => text(size: 10pt, rest)

== Bitwise Operations
#box(
  [#highlight(fill: rgb("#E6E6FA"), [*Clear Function*])
  - The *clear* identity puts a zero in any bit that has a zero in the masks
   $ "wxyz" "&" 1111 = "wxyz"$  

   $ "wxyz" "&" 1101 = "wx0z"$

  #text(size: 9pt, fill:red, [Known as the *AND* function bc/ it you only get a 1 when both respective bids are equal to 1])]
)

#box(
  [#highlight(fill: rgb("#E6E6FA"), [*Testing Function*])
  - The *set* identity puts a one in any bit you want to set regardless of what is present there where there is a 1 in the masks

   $"wxyz" | 0000 = "wxyz"$

   $"wxyz" | 0100 = "w1yz"$

  #text(
    size: 9pt,
    fill: red,
    [Known as the *OR* function because if either is one then the result is 1]
  )]
)

#box(
  [#highlight(fill: rgb("#E6E6FA"), [*Toggle Function*])
  - The *toggle* identity toggles any bit with a 1 in the mask's relative position
   $"wxyz" | 0000 = "wxyz"$

   $"wxyz" | 1000 = "w`xyz"$  
   
   #text(
    size: 9pt,
    fill: red,
    [Known as the *XOR* function becase only one bit can be 1 for it to be a 1]
   )
  ]
)

#box(
  [
    #highlight(fill: rgb("#E6E6FA"), 
    [Bitwise Operation Tricks])

    - To test a bit, clear all the rest 

    $ "wxyz" "&" 0010 = 00"y"0 $

     Now you can test 00y0 != 0000. True if y is 1, false if y is 0

    - To put a 1 in any bit position n in a mask, shift left by n 
      - Conversely to put a 0 surrounded by zeroes, complement this
     
     $ 1 << 2 == 0010$
  ]
)
\
\
\
== Shift Operations
#box(
  [
    idk im too lazy to do shift operations right now
  ]
)







