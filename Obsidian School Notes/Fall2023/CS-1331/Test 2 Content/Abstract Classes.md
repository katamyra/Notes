> [!info] An abstract class cannot be used to create objects. An abstract class can contain abstract methods that are implemented in concrete subclasses.
> 
> A kind of placeholder class can that can have some implementation but has at least 1 abstract method whose behavior must be defined in a concrete class.
> 
> The subclass must provide an implementation for the abstract superclass methods or be declared as an abstract class themselves. So if an abstract class extends an abstract class, it doesn’t have to provide implementation for all abstract methods.
> 

* You <u> cannot instantiate abstract classes with <b>new </b> </u>
* Abstract classes can have concrete constructor
	* Yes
* Can a subclass be abstract even if its superclass is concrete?
	* Yes! This happens with every abstract class since they extend object
* Can a class **override** a method and declare it to be **abstract**
	* Yes!

>[!info] Making a class **final** prevents it from being extended. 
>Final classes can be used as a normal class, but cannot be extended anymore. Making a method *final* <u> prevents it from being overriden </u>
