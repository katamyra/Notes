# Chapter 9 
* The **state** of an object (also known as its *properties* or *attributes*) is represented by data fields with their current values
* The **behavior** of an object (also known as its *actions*) is defined by methods. 
* The illustration of class templates can be standardized using *Unified Modeling Notation (UML)*
![[Screenshot 2023-10-18 at 10.26.51 PM.png]]
### Constructors
* A constructor is invoked to create an object using the **new** operator
	* A constructor must have the name of the class itself
	* Constructors have <u> no return type </u>
	* Constructors are invoked using the ***new*** operator when an object is created
* **A class may be defined with no constructor. In this case, a public no-arg constructor is implicitly defined within the class.** This constructor goes away if any constructor is defined, even if it has arguments

### Static Variables, Constants, Methods
* Instance variables is tied to a specific instance of the class, it is not shared among objects. However, **static variables**, or *class variables* store values for the variables in a common memory location
	* So if one object changes the value of a static variable, all objects of the same class are affected
* ***Static Methods*** can be called without making an instance of the class
* Both *static method and data* can be accessed from a reference variable or from their class name
	* However, doing it from class name is much more preferred and more readable
* **Static methods can only call other static methods**

### Visibility Modifiers
* You can use **public** visibility modifiers for classes, methods, and data fields to denote that they can be accessed from any other classes
	* <u> If no visibility modifier is used, then by default the classes, methods, and data fields are accessible by any class in the same package. </u>This is known as <b> package private or package access</b> 
* In addition, there is the **private** modifiers, which makes methods and data fields accessible from only within its class


chip s = new Ruffles();
Ruffle p = (Ruffle) s;