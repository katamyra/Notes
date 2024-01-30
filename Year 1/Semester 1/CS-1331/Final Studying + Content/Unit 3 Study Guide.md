# Interfaces
* Interfaces are another level of abstraction, *basically a contract that defines what a class can do* 
	* Interfaces often have a -able suffix as they describe some type of functionality. But this isn’t any requirement
* A class can implement multiple interfaces
* Interfaces can extend other interfaces using the **extends** keyword ←- not implements keyword
* An implementing concrete class must override **all** abstract methods in the interface
	* Abstract classes and interfaces that implement an interface does not have to override the abstract methods of the interface
* **Interfaces can be the static type of a variable**
	* But you still can not instantiate one
## Interface Rules
* All members are implicitly **public**
	* So you don’t need to include the public *modifier*
* Methods are **non-static** and **abstract** by default
	* Methods are allowed to be *static*
* Can have **default** methods
	* These have implementations
* Fields must be constants (**static final**)
	* **Cannot have any instance fields nor constructors**

# ArrayList
* **Arraylists are data structures that implement the List interface**
	* Lists are ordered sequences of elements
* Data is stored in an array behind the scenes and are stored contiguously in memory (no space)
