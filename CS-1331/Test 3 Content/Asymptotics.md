* **Efficiency** - programming at scale isn’t just about writing code that works correctly, its also about the programs being efficient 
	* Two main types of efficiency to worry about: ***time & space***

> [!info] Big O Notation
> 1) Describes the performance of an algorithm as the size of input grows
> 2) Machine Independent (# of steps to completion)
> 3) Ignores Smaller Operations O(n+1) → O(n)
> 
![[Screenshot 2023-11-06 at 7.03.20 PM.png]]

* A **constant time operation** is an operation that, for a given processor, always operates in the same amount of time regardless of input values
	* Loops can have *constant time operation* if the input doesn’t affect the # of steps to completion