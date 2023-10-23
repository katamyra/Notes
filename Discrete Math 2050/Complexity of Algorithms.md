* An analysis of time required to solve a problem of a particular size involves the time complexity of the algorithm
	* An analysis of computer memory required involves the space complexity of the algorithm
## Time Complexity
* The **time complexity** of an algorithm can be expressed in terms of the number of operations used by the algorithm when the input has a *particular size*
	* Note that we measure time complexity in number of operations and not the actual length of time
* Note **constant time complexity** (aka O(1)) doesn’t mean one operation, but rather that the same number of operations is ran regardless of the input
* ADD EXAMPLE
![[Screenshot 2023-10-22 at 8.01.35 PM.png]]
* **Rules of Thumb**
	* If nothing is changed within the loop itself then the following apply
	* A single loop usually runs in O(n)
	* A nested loop running through a list usually runs in O(n^2)
	* 3 loops running through a list usually runs in O(n^3)
	* Splitting a list in half each time usually runs in O(log(n))
	* **However, the logic in the loop matters because this can and often does change the runtime**
* Examples
![[Screenshot 2023-10-22 at 10.17.19 PM.png]]
Simply iterating through list, so O(n)
![[Screenshot 2023-10-22 at 10.17.49 PM.png]]
O(1), because the input doesn’t affect number of operations
![[Screenshot 2023-10-22 at 10.19.58 PM.png]]
O(n^3)
![[Screenshot 2023-10-22 at 10.20.18 PM.png]]
This is binary search (splitting list in half each time), meaning its O(log2(n))