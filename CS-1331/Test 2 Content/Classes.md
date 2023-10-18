* A class is the "blueprint" of an object
	* It defines what attributes and behaviors that an object has
	* There is one class (the blueprint/template) but there can be many objects created from that class (*instances/objects*)
* The class name is the "type" of the object
	* Each class has different *attributes*, such as color, hp, year, model for a car
	* These attributes would have values within the instance/object of that class
		* Year = 2014, hp = 250, etc
* Think of the behaviors/actions associated with a Car
	* drive, turn, brake, etc
	* A program is composed of one or more classes, and at least one class has a *main method* to start the execution of the program
### Instance Data
* *Instance data* is data that belongs to an *instance* of the class, not the methods of that class (which are called local variables)
	* Sometimes we want an object to have an initial state when it is created. We do this through *constructors*
		* Variables are automatically initialized with default values, but it's often a good programming practice to explicitly initialize them
* We "call" the constructor when we use the **new** keyword to create (construct) an object of a class
	* `Car car1 = new Car();`
* We can access instance data (ie fields, attributes, state) using the **dot operator**
	* `car.year`
	* `car1.hp = 300;`
	
### Instance Methods
* Instance methods are the behaviors (actions, methods) that operate on an instance of a class
```java
double drive(int time) {
	double distance; // distance is a local var to drive, time is a param
	distance = time * speed;
	return distance;
}
Note that speed is NOT a local variable of the method drive(...). Java will look for a field name speed within the object this method is called on.
```
* When we call the methods of an object/instance, control flows to the method in the context of the object, through the method, and then returns to the calling context
	* Instance methods are different than **static methods** because they operate (or belong) to an object, not the class itself
		* Static methods are unable to call/access inference references
	* aka they have specific access to an individual object's instance data (unlike static methods which cant access instance date)
	* **return** statements cause the method to immediately return; it can be anywhere in the method, not just at the end
* **Parameters**
	* formal (named in header) parameters are the names of the local var for the method
	* actual (the values passed) parameters are values held in the variable copied into formal parameters
		* these are also called *arguments*
		* Java is pass by value!
	* Arrays can be parameters too
		* *A reference to an object is passed by value as well!*
### UML Class Diagram
* **UML (Unified Modeling Language**
	* "Standard" way of diagramming and modeling classes
	* Many software development teams use this or something similar in design documentation
	* As we build increasingly complex software systems with multiple classes, this kind of diagramming becomes incredibly helpful in visualizing the system at a higher level than looking at source code directly
***
### Review
* One important keyword we need to understand is the *this* keyword
	* It can be used within non-static methods in order to refer to the object upon which the method is invoked
	* This is also important when a class method's formal parameter *shadows a field of that class*
		* This is why we need to use this in constructors
***
## Encapsulation
* At the class level, we need to think about how the class will work and at the program level we need to think about how objects interact
	* Objects should be responsible for managing themselves
		* We don't want "outsiders" modifying instance data without having the proper authorization and validation of those modifications
		* This idea of protecting the instance data of the object is called **encapsulation**
	* The methods we create to allow outsiders to use and interact with an object is called a class's **interface**
* Objects should be "self-governing" meaning each object takes care of its own data and guards itself from being accessed inappropriately

> [!info] Access of Visibility Modifiers
> Access or visibility modifiers are reserved words that control the visibility of fields and methods
> 
> **public**
> This is available to outsiders/anyone with a reference to the object or access to the class to interact with
> For instance data, this means they can read and change the value of the variables
> For instance methods, this means they can call the method
> 
> **private**
> This is available only within the class itself, with no outside acess
> For instance data, this means the fields can only be read and changed from within the class
> For instance methods, the methods can only be called inside the class
> 
> **default** (*no explicit word used*)
> "package private", meaning it is public to everything within the same package. For us this means its identical to public but its not actually identical

> [!info] Getters and Setters
> **Accessors** and **Mutators** are two concepts that aid in the enforcement of encapsulation. These are the *gatekeepers* to an objects data
> 
> Encapsulation doesn't mean that values can't be changed, but rather that the change doesn't go unchecked by the class
> 
> **Accessors** (*getters*) access or get data from an object, and they have extra code to ensure the data is allowed to be access and perform error checking
> **Mutators** (setters) "set" the data in an object. They often have additional code to ensure the data is allowed to be changed and validate the new values are valid, and further perform error checking

> [!info] Constructors and Scope
> **Default Constructor**
> This constructor is provided by Java on default. It takes no parameters (no args) and it only exists if no other constructors have been written. *If you write your own constructor, the default parameter does not exist anymore!*
> 

> [!info] Constructor Overloading
> Constructors are a special kind of method, so they can also be overloaded
> *Constructor chaining* is when a constructor of a class calls a different constructor from within the same class 
> We can use the *this* keyword followed by parentheses to reference another constructor from within a constructor. This allows us to avoid duplication of initialization code when we provide more than one constructor for a class.
> Ex: 
> ``` java
> Car() {
>     this(1995); \\reuse here is good
> }
> Car(int year) {
>     this.year = year;
> }
> ```

>[!info] Static & Null
>**Static** variables and methods operate in the context of a class NOT a particular instance of a class. You cannot reference instance data/variables of the class where they reside
>
>Keyword **null** and the NullPointerException ->
>**null** is a reserved word that is used to represent when the reference variable does not refer to a specific instance of a class. Attempting to access the fields of a null object will result in a NullPointerException, which is why you should check that an object reference is not equal to null before trying to "use" an object
>IMMUTABLE OBJECTS?
>








