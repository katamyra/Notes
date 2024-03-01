#import "../../../template.typ": *

= Therac-25

#definition[
  The *therac-25* was a linear accelerator created to treat cancer with radiation therapy
]

The therac-25 was an all new version of earlier therac-6 and therac-20 machines, but unlike them did not have manual overrides.

The therac-25 had malfunctions and would give too much, or too little (which could also be dangerous) radiation causing lots of harm.

== Software Errors 

Two of the therac-25's main software errors were *race conditions*.

#definition[
  *Race Conditions* is when a system tries to perform two operations at very similar times but because of the nature of the system, the operations have to be done in specific manner for it to work correctly.
]

One race condition was with the system acting on old information that had been changed to new information while the computer wasn't checking the values.

== Design Flaws 

Design process flaws by reusing older code designed to work with a system that had manual overrides and locks.
- So the flows were system flaws, not only software errors 

The system was not designed with being fail safe in mind

== Moral Responsibility 

In order for a moral agent to be responsible for a harmful event, two conditions must hold:

- *Causal Condition*: The actions (or inactions) of agents must have caused the harm
- *Mental Condition*: The actions (or inactions) of agents must have been intended or willed by the agent\*
\*This also includes unintended harm if it came from carelessness or negligence