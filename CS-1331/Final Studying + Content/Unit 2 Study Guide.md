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
## Encapsulation
* This is a method to protect instance data from being accessed by unauthorized entities (“outsiders”)
* **Steps to Achieve Encapsulation**
	* Declaring all the variables in the class as private or an appropriate visbilityx`