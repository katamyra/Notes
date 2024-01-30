#set text(
  size: 11pt,
  font: "Times New Roman"
)
#set page(
  header: align(right)[
    Krish Katariya
  ]
)

#align(center)[
  = CS2340 Quiz 1 Notes
]

#show heading: it => [
  #set align(center)
  #set text(font: "Inria Serif")
  > #emph(it.body) 
]


#box(
  columns(2)[
    #box(
      radius: 4pt,
      inset: 10pt,
      fill: rgb("#E9CBFF"),
      [
        = What is Refactoring?
        *Refactoring* is applying small, independent techniques to apply transformations into a program

        _Goal_: Keep program readable, understandable, and maintainable.

        _Key Feature_: Behavior-preserving
      ]
    )
  ]
)

#box(
  columns(2)[
    #box(
      radius: 4pt,
      inset: 10pt,
      fill: rgb("#E9CBFF"),
      [
        = Why Refactor?
        * Requirements Change* - different designs can be needed over time!

        * Design needs to be improved* - so that new features can be added; design patterns are often a target   

        * Sloppy programming *

        _Refactoring often makes a design more flexible_    
      ]
    )
  ]
)

#box(
  columns(2)[
    #box(
      radius: 4pt,
      inset: 10pt,
      fill: rgb("#e9cbff"),
      [
        = Collapse hierarchy
        *merging* classes if a subclass and superclass are too similar

      ]
    )
  ]
)
#box(
  columns(2)[
    #box(
      radius: 4pt,
      inset: 10pt,
      fill: rgb("#e9cbff"),
      [
        = Extract Method
        If there is a cohesive code fragment in a large method

      ]
    )
  ]
)

