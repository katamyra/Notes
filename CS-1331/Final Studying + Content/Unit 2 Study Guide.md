	# Classes
* Classes have instance fields describing the state of the object
	* Objects are created by invoking the constructor which assigns values to instance fields
## Instance vs Static
* **Instance fields** describe the state of a specific instance
	* Each instance has its own instance data, and that data only changes for that specific instance when modified
	* They have *default values*
		* 0, 0.0, false, null
* **Static fields** belongs to the class rather than a specific instance
	* They are shared by each instance, meaning *that if one instance changes a static value, it changes for all instances*
	* Static values also have *default values*
* **Instance methods** must be called on an instance of the class, and they **can access and modify the instance and static fields of a class**
	* **Static methods operate in respect to a class, not a specific instances**
		* They can only access static fields and call other static methods
## Visibility Modifiers
* These *describe the accessibility of your code to other .java files*
* **Public**
	* Can be accessed from anywhere (in the class, outside the class, within the package, and outside the package)
* **Private**
	* Can only be accessed within the class
* **Protected**
	* Accessible to all subclasses (in any package) and all classes in the same package
	* **Subclasses inherit no matter what, but so do any class in the package**
* **Default (no visibility modifier), also known as *package private***
	* Subclasses only inherit package-private members of superclass if the subclass is in the same package as the superclass
	* Any class in the package can see this as well
## Encapsulation
* This is a method to protect instance data from being accessed by unauthorized entities (“outsiders”)
* **Steps to Achieve Encapsulation**
	* Declaring all the variables in the class as private or an appropriate visibility
	* Writing public methods in the class to get and set the values of variables (getters and setters)
* **Why Encapsulation**
	* *Flexibility*: easier to change the encapsulated code with the new requirements
		* For example, if the requirement for setting the name of a person changes, we can easily update the logic in the setter method setName()
	* *Maintainability*: when your code is encapsulated into separate units (classes, interfaces, methods, setters, getters, etc) its easier to change or update a part of the codebase without affecting other parts
## Constructors
* A special type of methods that creates instances of a class
	* **No return type**
* Typically assigns passed in values to instance fields
* **If you don’t write any of your own constructors, Java provides you with a *default constructor* that has empty body**
	* If you write a constructor, the *default constructor is no longer provided*
### Constructor Overloading
* You can also overload constructors, by having *multiple constructors with the same name but different parameter list*
* **Constructor chaining**: save us from rewriting the same code
	* Method is usually delegated (or pushed off) to an already existing constructor. This is done by adding the **this** call in the constructor and passing arguments to 
### Deep Copy (Copy Constructors)
* **Deep copy** an object to create a new identical instance of the object and its instance fields to avoid any *aliasing problems*
	* We do this by creating **copy constructors**
* To make a deep copy of an array, you need to iterate through each element in the array
## Wrapper Classes
* A *wrapper class* is used to represent primitive data, but is an object
	* This means you can all methods on a wrapper class instance
	* Byte, Short, long, char, and boolean have wrapper classes
		* NOT STRING
* **Autoboxing/Autounboxing**
	* Java automatically converts between primitive types and wrapper types when needed
		* Also known as boxing/unboxing
	* *Autoboxing:* conversion from primitive types to wrapper type
	* *Autounboxing:* conversion from wrapper types to primitive types
```java
Integer num1 = 5; AUTOBOXING
int val = num1; AUTOUNBOXING
Integer sum = num1 + val + 5, num1 is unboxed to perform arithmetic, them sum is autoboxed
```
## Inheritance
* Classes can extend from another class to establish an *is a* relationship
	* Subclasses inherits the methods from the class it extends from **when it has a public or protected inheritance**
* We use inheritance because it allows for code reuse and reduce repetition
* Use the **extends** keyword 
* Every class in Java **extends from Object class**, either directly or indirectly
	* If you don’t specify a certain class extends another class, it will implicitly extend Object
* **Every subclass can only extend one superclass (single inheritance)**
* Use the *super* keyword to access the superclass’s **public and protected** fields and methods
	* Use super() to invoke the superclass’s constructors
		* Either super() or this() must be the first line of every constructor body. **If you don’t do it yourself, Java will insert super() for you, regardless of if the parent class has a super() constructor (aka no args)**
## Method Overriding
* A subclass can **override** a method from its parent class
	* It has the same method name and same parameters, *but it is a different implementation*
* You can have the compiler check if a method is properly overriding another by writing the *@Overriding* annotation before the method header
	* It is NOT required
* **Static and final methods cannot be overridden**
## Components of a Good Class
* **equals()**
	* The default implementation provided by Object class *only checks reference equality*
	* Reflexive (x.equals(x) –> True), Symmetric, Transitive, Consistent, Comparison w/ null –> False
		* **instanceof** is not symmetric
* **toString()**
	* Object’s implementation returns hexadecimal representation of the object’s hashcode
	* Instead give it a meaningful representation
* **hashCode()**
	* If *two objects are equal*, they have the same hash code, but two objects that have the same hash code are not necessarily equal
## Abstract Classes
* These are very similar to concrete classes, but abstract classes cannot be **instantiated**
* These are used to **define common states and behaviors of subclasses**
* Abstract classes can still have **constructors, non-abstract methods, and instance variables**
# Polymorphism
* Describes how objects have the ability to behave different based on the content of the action
* **Static Type**
	* The type of the reference at compile time, aka what the compiler “knows” the objects as
	* Determined once the variable is declared and never changes
* **Dynamic Type**
	* The type of reference at runtime, what the object “actually” is
	* Dynamic type of a variables may change using the assignment operator
* **The dynamic type should have an “is a” relationship with the static type”**
* How does polymorphism work?
	* At **compile time**, Java checks if the method exists in the **static type**
	* At **run time**, Java runs the implementation provided by the dynamic type
		* **If the dynamic type doesn’t have the implementation, it goes up the hierarchy chain looking for an implementation**
			* There should always be one because the static type has an implementation (otherwise there is a compile time error?)
* Methods take precedence over casting
* Casting temporarily changes the **static** type of the reference being casted
	* Does not impact what happens at runtime, only **compile time**
* **Types of Casting**
	* *Up Casting*: always compiles and runes
	* *Down casting*: casting a type to a subtype. Always compiles, sometimes runs
		* This only sometimes works because the dynamic type needs to have an “is a” relationship with the static type
	* *Side Casting*: never compiles or runs