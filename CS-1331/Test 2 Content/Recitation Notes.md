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
* 

static methods cannot be overridennnnn