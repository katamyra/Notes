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
	* All number, char, boolean, String, and **enum values** are literals ←why enum values?
### Immutability
* Once initialized, **final** variables are immutable (cannot be changed)
	* the *final* keyword is used to indicate a variable is immutable
* Naming convention is **uppercase letters and underscores**
## Type Conversion
* **Widening (small to big)**
	* byte –> int (for example)
	* **Allowed in java**
* **Narrowing (big to small)**
	* Allowed *only if you cast explicitly, otherwise it will cause a compile time error*
* **Explicit casting** must be performed when there could be a loss of data, in order to prevent compilation errors
	* Use parentheses, such as (byte) 12
* **Implicit casting** is done automatically by Java
* Casting does not change the original variable type, it temporarily changes the way the variable’s value is treated for a specific expression
* **Type Conversion Examples**
	* *Assignment (implicit casting, widening)*
		* `double sum = 5` //5 is converted into a double
	* *Arithmetic promotion (implicit casting)*
		* `double x = 2 + 2.0` // 2 is promoted to 2.0
	* *Explicit Casting (narrowing)*
		* `int pi = (int) 3.14` //Java truncates to 3
# Short Circuit Evaluation
* Occurs when the result of a logical expression can be determined *before it is completely evaluates*
* Avoids unnecessary work and leads to a efficient processing
	* Sometimes can also help us avoid logical errors in our code
```java
int num1 = 6;
int num2 = 9;
if (num1 / 2 == 4 && num2 / 0 == 0) {
	System.out.println("Nope! Not here.")
} else {
	System.out.println("Nice.")
}
This code still runs because of short circuit evaluation, so the second statement will never run
```

# Conditionals
## Switch Statements
* Switch statements are good when choosing between many **discrete values**
* Only works for **byte, short, int, char, String, and enum values**
* The default statement is optional and will only be used if none of the previous cases were true
* *Remember to use break statements to avoid fall-through*
	* If you miss one, all the statements below will run (is it until a break statement is reached?)
## For Loops
* These have **3 components:** *initializer, condition, update*
	* Technically, these aren’t even needed lol
	* **The condition is checked *before* every iteration, including the first**
# Methods
* **Method signature: Name and paramters only**
## Method Overloading
* **Method overloading** is when you have more than one method with the **same name** as they have different parameter lists (which means different method signature)
	* Either a different number of parameters or different parameter types
	* *Even if the return type changes, you need different parameters for it to be method overloading*
```java
public static int subtract(int a, int b) {
	return a - b;
}
public static double subtract(double a, double b) {
	return a - b;
}
```
## Ambiguous Invocation
* When the arguments passed into a method does not exactly match the method signature of an overloaded method (same method but different parameter lists), **the compiler will invoke the method that requires fewer arguments to be converted to the same type**
	* Basically if you put in the wrong inputs it will convert for you
* *However, if two methods have the same (least) number of conversions, the compiler doesn’t know which one to choose and raises an error*
```java
public static void main(String[] args) {
	sum(1, 2); Raises an error bc/ equal number of conversions
}
public static double sum(int a, double b) {
	return a + b;
}
public static double sum(double a, int b) {
	return a + b;
}
```
## Pass-by-Value
* Java is **pass-by-value**, meaning when a variable is passed into a method, a copy of the variables value is placed into the method instead of a reference to the variable
	* However, for methods it is **pass-by-reference**
# Arrays
* **Arrays** are objects that represent a sequence (ordered) of homogenous (same type) elements
	* These can hold either primitive types or reference variables
* Length (capacity) is **fixed** once instantiated
* **2d Arrays can be both rectangular or jagged (diff elements in each sub-array)**
* *Arrays are mutable*
## Aliasing: Shallow vs Deep Copy
* A shallow copied array has the same reference as the original array and also the same reference to each object in the array
* To instead **deep copy** an array and prevent aliasing, create a new array and deep copy each element in the array
	* For primitive data, deep and shallow copy are same
	* Mutable objects need to be deep copied