#import "../../../template.typ": *

#show: template.with(
  title: [
    Computer OS and Programming Notes
  ],
  authors: (
    (
      name: "Krish Katariya",
      link: "https://github.com/katamyra"
    ),
  ),
  description: [
    Notes based on CS 2110 Textbook
  ]
)

#set text(
  fill: rgb("#04055c")
)
= Digital Logic Structure
#include "Modules/SequentialLogic.typ"
#include "Modules/Storage.typ"
