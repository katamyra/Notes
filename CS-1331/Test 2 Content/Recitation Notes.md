## Scope
* Variables have an attribute, called **scope** which determines where in code they are accessible from
![[Screenshot 2023-10-18 at 11.26.09 PM.png]]

## Method Overloading
* You can have more than one method with the **same name** as long as they have different parameter lists (which leads to different method signature)
	* Different number of parameters or different parameter types works (remember, the order of parameter types matters in the method signature)
* Methods within the same class *cannot have the same method signature* because a method can only have one definition
* **Even with different return types, you cannot have the same method name + arguments**

### Ambiguous Invocation
* When the arguments passed into a do not exactly match the method signature of an overloaded method, the compiler will invoke the method that requires the least amount of conversions needed
	* If they require an equal amount of conversions, it will **raise an error**

# Classes
[[Classes]]
* Can have instances fields describing the state of the object
	* Can have instance methods describing the actions an object can perform
* An **instance** is created using the *new* keyword
* **Instance Fields have a *default value***
	* int: 0
	* double: 0.0
	* boolean: false
	* char: ‘\\u0000’
	* reference: null
* **Static Methods**
	* Belongs to the class rather than a specific instance
		* Is **shared** by each instance, so if its value is modified, its modified for all instances
	* Cannot access instance data in method body, but can work with static (class-level) data
	* Can be invoked by both the class (preferred) or an instance of the class (not recommended)
* **Instance Methods**
	* Instance methods *must* be called on by an instance of the class

## Encapsulation
* A way to protect instance data from being accessed by unauthorized entities
* **To achieve encapsulation**
	* Declaring all the variables in the class as private or an appropriate visibility
	* Writing public methods in the class to get and set the values of variables (getters and setters)

### this keyword
* this is a reserved keyword in Java w/ many uses
* It refers to the current instance of that class
* You use it to specify the *instance field*, instead of a *local variable* with the same name
	*  Can also be used for **constructor** chaining

## Constructors
* **Default Constructor**
	* Java provides you with a **default constructor**, has empty body and takes no arguments. If you provide any constructors, the default constructor is no longer provided
* **Constructor Overloading**
	* You can overload constructors just how you overload methods
	* This saves us from rewriting code
		* Use **this()** in your constructor (MUST BE WRITTEN ON FIRST LINE OF BODY) and pass in the arguments from the main constructor
	* A lesser-argument constructor should chain with one with more arguments to **reduce code repetition** and **maximize code reuse**


## Aliasing
* Situation in which an object has multiple aliases
	* **Consequence:** there are multiple aliases through which an object’s state can be accessed and modified
```java
String s1 = new String("string1");
String s2 = s1;
System.out.println(s1 == s2); //prints true

int[] a1 = {1, 2, 3, 4, 5};
int[] a2 = a1;
a2[3] = 0; BOTH ARE MODIFIED
```
* Any mutable object, such as arrays or reference variables (Strings) *must be deep copied, rather than shallow copied*
	* This is because otherwise, only their reference is passed and this means multiple objects point to the same reference

## Wrapper Classes
* A wrapper is used to represent primitive data, but is still an object
	* This means you can **call methods on a wrapper class interface**
* There is a corresponding wrapper type for every primitive type
	* byte → Byte
	* short → Short
	* int → Integer
	* long → Long
	* float → Float
	* double → Double
	* char → Character
	* boolean → Boolean
* Each of these wrappers are in ***java.lang***, meaning there is no reason to import, since .lang packages are automatically imported
* **Autoboxing/Autounboxing**
	* Java automatically converts between primitive types and wrapper types when needed
	* *Autoboxing*: conversion from primitive type to wrapper type
	* *Autounboxing*: conversion from wrapper type to primitive type
```java
Integer num1 = 5; //autoboxing, int, to Integer
int val = num1; //autounboxing, Integer to int
Integer sum = num1 + val + 5;
//num1 is unboxed to perform the operation, then the value is autoboxed into Integer
```
* **Helpful Wrapper Class Methods**
	* `int num = Integer.parseInt(String s);`
		* Takes in a String and parses it into an int
	* `String s = String.valueOf(int i);`
		* Takes in an in t and turns it into a string

## Inheritance
* Classes can extend from another class to establish an *“is a”* relationship
	* **Parent class (superclass)** is being extended
	* **Child class (subclass)** extends the parent class
* Subclasses inherit the method and data from the class it extends from 
	* If a method is in the parent class, the child will also have that method
	* A child class is said to *inherit* these fields or methods
* Inheritance only occurs when the field of method is **public** or **protected**
	* We use inheritance because it allows code reuse and reduces repetition
* To prevent a class from being extended, use the **final** keyword, etc `final class Seal `
* Either *super()* or *this()* must be the first line of every constructor body. If you don’t include it yourself, Java will insert super() for you, whether or not the parent class has a no-argument constructor

## Class Hierarchies
* Every class in Java extends from Object class, either directly or indirectly
	* If you don’t specify that a certain class extends another class, **the class will implicitly extend Object (directly extends object)**, otherwise it will indirectly extend Object
		* Thus, all classes are both a child and parent class (other than *Object class*)
* Every subclass can only extend *one single superclass*
	* Classes should be more specific as you go down a chain
	* For this reason, a parent class can have any number of child classes, while a child class can only have one parent class (*single inheritance*)

### Packages
* Useful for grouping together classes with similar purposes or functions
* To create a package
	* Create a folder and place Java files inside
	* Write package <folder.name> at the top of each class in the package
	* When compiling, tell java where to find the package (classFile)
	* Be default, java uses looks in current working directory

## Visibility Modifiers
* **Public** - accessible to literally anything
	* Any class inside and outside of package
* **Private** - only accessible to the class itself
	* Subclasses inherit, but cannot access the variables
* **Protected** - accessible to subclasses (in any package) and all classes within that package
	* Subclasses always inherit protected data of superclass
* **Default (*no visibility modifiers*)*** - accessible to all classes in the same package
	* Also known as *package private*
	* Subclasses only inherit *package-private* members of superclass if the subclass is in the same package as the superclass
![[Screenshot 2023-10-19 at 11.47.43 AM.png]]

## Overriding 
* A subclass can override a method from its parent class
* It has the **same method name and same parameters**, but a different implementation
	* This is different from **method overloading**, which has different *parameters*
* You can have the compiler manually confirm if a method is properly overriding another using the ***@Override*** annotation before the method header
	* However, this is *not required nor does it change the functionality of code*, it is simtly a check
* ***STATIC AND FINAL METHODS CANNOT BE OVERRIDDEN***
![[Screenshot 2023-10-19 at 11.53.50 AM.png]]

## Components of a Good Class
* Override these methods from the **Object class**
	* ***equals()***
		* The default implementation provided by Object class just checks *reference* equality
		* Instead, override so that it evaluates quality. It should be: 
			* **Reflexive**: x.equals(x) should be True
			* **Symmetric**: x.equals(y) == y.equals(x)
			* **Transitive**: If x.equals(y) == true and y.equals(z) == true, then x.equals(z) == true
			* **Consistent**: If no object data is modified, x.equals(y) should have returned the same result
			* **Comparison with null**: x.equals(null) is false
	* ***toString()***
		* Object’s implementation simply returns a representation of the hashcode, override it to give a meaningful String representation instead
	* ***hashCode()***
		* We do not need to know how to implement hashCode, but we should know its functionality
		* Natively, returns some integer representation of the Object
		* If **two objects are equal**, they must return the **same hashcode**
			* However, if two objects have the same hah code, they *do not necessarily have to be the same object
* Include private encapsulated data and use getters and setters as necessary

### Abstract Classes
* “Template” for behaviors that subclasses of the abstract class must follow
* Can have **abstract methods**, which need no implementation and just a method header
	* These classes must be overridden when inherited by a *concrete* class
		* **Cannot be private**, since then private