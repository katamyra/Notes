* By breaking our programs into smaller chunks that can be shared or used within a class and/or by other classes, we can build our own APIs that make our programs easier to read, write, and debug 
	* Methods, because they essentially act as a "black box" that takes in input and returns an output, are much easier to test
	* We can create methods that can be called without creating an instance of the class such as  `Math.pow()` without creating an instance of Math first
		* These methods are called **static methods**
			* They exist at the class level and don't require unique information
* The *method header* is composed of
	* **modifiers** such as public, private, static, final
	* **return type**
	* **method name** 
	* **parameter list**
	* **method body**
	* This is known as the *method signature*
* Main() serves as the entry point for the Java application, and it is called by JVM when the program is executed
	* Main needs to be static because JVM would create an instance of the class before it could call the main() method which would add an unnecessary step and delay in the program
* Parameters in java are **pass by value** meaning copies of the actual parameters are created and given to the method
	* This protects the original data from being manipulated
* Scope
	* In java, a local variable is defined within a method or block and its scope is limited to that method or block
* *Method Overloading*
	* Remember that we mentioned the method signature (name + formal parameter list) is how Java distinguishes one method from another
		* You can create two methods w/same name and diff parameters to create different versions of a method such as  `public static void max(int a, int b)` and also `public static void max(double a, double b)`
	* The return type doesn't work for method overloading, you cant have the return type of two method be different
	* The methods need to be distinguished so the compiler knows which one to call, this is called **ambiguous invocation**