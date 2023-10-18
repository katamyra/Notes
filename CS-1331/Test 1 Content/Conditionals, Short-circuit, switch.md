### Boolean Expressions
* The program can decide which statements to execute based on a condition
	* **Conditionals** - options on what to execute next, based on boolean expressions
	* A boolean expression is an expression that evaluates to a Boolean value: true or false
* **Short Circuit Evaluation**
	* When evaluating a boolean expression, Java will stop evaluating the expression when the outcome is guaranteed
	* So if you are using the && operator, if the first condition is false then the second expression will not even be evaluated
	* For || operator if the first condition is true then the second will not be evaluated
	* Java does not do short circuit evaluation for the bitwise AND, bitwise OR, and bitwise XOR 
* **Switch Statement**
	* The switch statement observes the following rules
		* The switch expression must yield a value of char, byte, short, int or String type and must be enclosed by parentheses
		* The value1, ..., and value N must have the same data type as the value of the switch expression
		* value1, ..., value N are constant expressions, and cant be like 1+x or something 
		* When the value in a case statement matches the value of the switch expression, the statements starting from this case are executed until a break statement or the end of the switch statement is reached
			* So if you don't add break itll do the cases below too
		* The default case, which is optional, can be used to perform actions when none of the specified cases matches the switch expression
		* The keyboard break is optional, this immediately ends the switch statement.
	* The switch expression must yield a value of char, byte, short, int, or String type and must always be enclosed in parentheses
	* Fall-through behavior
		* Continues to execute until a break is encountered
```java
switch (switch-expression) {
	case value1:
		statement(s);
		break;
	case value2;
		statement(s);
		break;
	default:
		statement(s)-for-default;
}
```
 