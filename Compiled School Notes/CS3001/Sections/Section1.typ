#set text(
  font: "New Computer Modern",
  size: 11pt
)
#set par(
  justify: true,
  leading: 0.68em,
)

#set heading(numbering: "1.a")
= _Introduction_
My name is Krish Katariya. I am a CS major as an Info and Intel major and this is my second semester here. 

== Ethical Question
_Suppose theres an AI model that can relatively accurately detect if someone is feeling depressed or on the edge of suicide. Would it be immoral or infringing on peoples emotional privacy to install this AI into company zoom meetings or other software in order to try to help these people ahead of time?_

= _Stop Sign_
To be truthfully honest, yeah I would not stop at the stop sign. I think the line is that I wouldnt blow past a red light no matter what but I would for a stop sign.

= _Section Discussion Question_
How many years after a new medical machine or technology comes out would you guys need before you would trust to use it yourself?

= _People in the Therac controversy_
*My person: #highlight(fill: rgb("#E5DAFC"), [Programmer of Therac-25])*
== What the Person Did
They created the Therac-25 and directly wrote the code that lead to all the errors. 
Some of the errors that occured include
+ *Race errors* which are very hard to fix or even notice in the first place
+ They copied code from previous therac models assuming it worked but the only reason it likely worked before was because there were hardware locks making sure nothing could go wrong
+ Data Overflow
  - one of the really massive overdoses of radiation is was caused by a data overflow that was not correctly handled in software
+ Lack of Proper Testing
  - lacked comprehensive testing 

== What that person failed to do  
They failed to do enough comprehensive testing to make their code work. #underline[Furthermore, they should have done more testing when the machines were harming people, rather than claiming that the machines could not cause theset problems.]

== What they could have done differently
They should have done more testing but also designed their code not only to be safe on a software level, but also on a hardware level. They should have created hardware safeties to make sure people weren't hurt.
They also could have written better documentation and training and having a more holistic and rigorous approach to software development, especially in these types of critical applications.

== How they affected what happened
They caused people to die due to having faulty software.

