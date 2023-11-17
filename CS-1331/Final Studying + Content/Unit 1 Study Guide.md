# Variables
* Containers where we store our data 
	* declaring a variable is choosing its type, while assigning to a variable is giving it a value. **initialization** is giving a variable a value for the first time
## Variable Naming Requirements
* Cannot be a reserved word, such as **int, public, class, static, void**
* **Cannot start with a number**
* **Cannot contain special characters nor spaces (*only exceptions are $ and _*)**
* Conventions
	* **Camel case (myInt, camelCaseVariableName)**
	* Descriptive names
* Are the following legal?
	* new –> NO, reserved keyword
	* $s –> yes
	* PandaSize –> yes, but not camelcase
	* averageNum –> yes
## Primitives
* Variables of primitive type hold the value itself (rather than a reference)
* All primitives are **lowercase**
* Java has 8 types of primitives
	* **Integer numbers**: byte, short, int, long
		* In order of size: byte is smallest, then short, then int , then long
	* **Floating point numbers**: float, double
	* **Other:** char, boolean
![[Screenshot 2023-11-16 at 10.56.19 PM.png]]
* Range for values: [-2^(n-1), 2^(n-1)-1]
* Literals are constants that can be assigned to a variable