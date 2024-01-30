### Bits and Bytes
* A computer is really nothing but a series of switches with one of two states: on and off
	* The 0s and 1s that are interpreted as digits in the binary number system are called *bits* (binary digits)
	* The minimum storage unit in a computer is a *byte*. A byte is composed of 8 bits and bytes can store very small numbers such as 2
## Programming Languages
* Computers do not understand human language, so programs must be written in a language a computer can use
* **Machine Language**
	* A computer's native language is machine language - a set of built in primitive instructions
		* These are in binary code
	* Machine language is different among different types of computers
* **Assembly Language**
	* Programming in machine language is a tedious process
	* Programs written in machine language are very difficult to read and modify, so assembly was created in the early days of computing 
	* Assembly is a *low level* language because assembly is close in nature to machine language and is machine dependent
* **High Level Language**
	* Later on, high level languages emerged, which are platform independent, which means that you can write a program in high level language and run it on different machines

### Java & JDK
* The *Java Language Specification* is a technical definition of the java programming language's syntax and semantics
* The *application program interfaces (API)*, also known as the library, contains predefined classes and interfaces for developing java programs
* Oracle releases java versions alongside the **Java Development Toolkit (JDK)**
	* The *JDK* consists of a set of separate programs, each invoked from a command like for developing and testing programs
		* Instead of using JDK, you can use an IDE (Integrated Development Environment) if you want

### A Simple Java Program
```java
public class Welcome {
	public static void main(String[] args) {
		System.out.println("Welcome to java");
	}
}
```
* Line 1 defines a class. Every java program must have at least one class.
* Line 2 defines the main method. The program is executed from the main method
* **Reserved keywords** have specific meaning to the compiler and cannot be used for other purposes in the program
*** Java is case sensitive**

### Creating, Compiling, and Executing a Java Program
* You have to create and **compile** your program before it can be executed
* A Java compiler translates a Java source file into Java bytecode file
	* so `javac Welcome.java` compiles Welcome.java file
* If there are no syntax errors, the **compiler** creates a bytecode file with a *.class* extension
	* While Java is high language, Java bytecode is a low level language, similar to machine instructions except it is platform neutral and can work with any machine that has the **Java Virtual Machine (JVM)**
* To execute a Java program is to run the programs bytecode, which the JVM, or interpreter does
	* *JVM* translates the individual instructions in the bytecode into the target machine language code one at a time rather than the whole program as a single unit

## Programming Errors
* Programming errors have three types: *syntax errors, runtime errors, and logic errors*
* **Syntax Errors**
	* These are errors that are detected by the compiler that result from errors in code construction
		* This usually includes mistyping a keyword, omitting necessary punctuation, etc
* **Runtime Errors**
	* These are errors that cause a program to terminate abnormally
	* They occur while a program is already running if the environment detects an operation that is impossible to carry out
		* These are usually caused by *input mistakes* by entering in a value that the program cannot handle
* **Logic Errors**
	* *Logic errors* occur when a program does not perform the way it was intended to
	* Errors of this kind occur for many different reasons but they're all just mistakes in the logic you wanted
* **Common Errors**
	* Missing Braces
	* Missing Semicolons
	* Missing Quotation Marks
	* Misspelling Names

### Writing a Simple Program
* An *algorithm* describes how a problem is solved by listing the actions that need to be taken and the order of their execution
	* Algorithms can be described in natural languages or in *pseudocode* (natural language mixed with some programming code)
* **Declaring variables** is when you let the compiler know what the data types for variables is
	* Java provides simple data types for representing integers, real numbers, characters, and Boolean types. These are known as **primitive data types**
* Real numbers are represented using a method known as *floating point* in computers
	* So the real numbers are also called floating point numbers
* Variables such as radius and area correspond to memory locations
	* Every variables has a name, a type, a size, and a value
* The *plus sign (+)* has two meanings: one for addition and the other for concatenating (combining strings)
	* The plus sign concatenates strings into a longer string
		* **If a string is combined with a number, the number is converted into a string and concatenated with the other string**
* Java uses **System.out** to refer to the standard output device and **System.in** to the standard input device. By default, the output device is the display monitior and the input device is the keyboard
* The **Scanner** class is in the **java.util** package. There are two types of important statements, *wildcard and specific import statements*
	* Wildcard Import: imports all classes in a package using the *asterisk*:
		* import java.util.\*;
	* Specific import: imports a specific class, such as `import java.util.Scanner;`
* If you do myScanner.nextDouble() 3 times in a row (diff lines), you can input like `10 20 30` without different lines
* If you put in 5a for `.nextDouble()`, it will cause a runtime error
#### Identifiers
* In programming terminology, names for variables are called *identifiers*
	* Identifiers are a sequence of characters that consist of letters, digits, underscores, and dollar signs
		* An identifier must start with a letter, an underscore, or a dollar sign
			* **It cannot start with a digit**
		* An identifier cannot be a reserved word
		* An identifier cannot be true, false, or null
		* An identifier can be of any length
	* For example $2, Compute Area, area, print_ are all legal identifiers, but 2+4 is not a valid identifier
	* *Since java is case sensitive, area, Area, and AREA are all different identifiers*
### Assignment Statements and Assignment Expressions
* The variable declaration tells the compiler to allocate appropriate memory space for the variable based on its data tyle
* The syntax for declaring a variable is
	* `datatype variableName`
* If variables are of the same type, they can be declared together as follows
	* `datatype variable1, variable2, etc`
* You can also use shorthand form to declare and initialize variables of the same type together
	* `int i = 1, j = 2`
	* aka you can declare and initialize at the same time if its the same data type
* The **scope** of a variable is the part of a program where the variable can be referenced
* After a variable is declared, you can assign a value to it using the *assignment statement*, which is the **equal sign**
	* variable = expression
* In Java, an assignment statement is essentially an expression that evaluates to the value to be assigned to the variable on the left side of the assignment operator
	* So because of this,, `System.out.println(x=1)` is actually correct and is the same as:
```java
x = 1;
System.out.println(x);
```
* If a value is assigned to multiple values, you can use this syntax
	* `i = j = k = 1`
	* This is equivalent to
```java
k = 1;
j = k;
i = j;
```
* The data type of the variable on the left must be compatible with the data type value on the right, so `int x = 1.0` would be illegal bc/ 1.0 is not an int
#### Constants
* The value of a variable may change during the execution of a program, but a **named constant** or simply **constant** represents permanent data that never changes
* Heres how you declare a constant: `final datatype CONSTANTNAME = value;`
* Benefits of Constants
	* You don't have to repeatedly type the same value
	* If you have to change the constant value, you only have to do it in one space
	* A descriptive name makes code easier to read
### Naming Conventions
* Make sure that you choose descriptive names with straightforward meanings for the variables, constants, classes, and methods in your program
* Names are case sensitive
* Conventions:
	* Use lowercase for variables and methods
		* If a name consists of several words, concatenate then into one and capitalize following letters
	* Capitalize the first letter of every class name too
	* Capitalize every letter in a constant, and use underscores between words
		* Eg: PI and MAX_VALUE

### Numeric Data Types and Operations
* Every data type has a range of values
	* The compiler allocates memory space for each variable or constant according to its data type
* Java has eight primitive data types for numeric values, characters, and Boolean values
* The six numeric data types
	* **byte**: -2^7 to 2^7 - 1, 8 bit signed
	* **short**: -2^15 to 2^15-1, 16 bit signed
	* **int**: -2^31 to 2^31-1, 32 bit signed
	* **long**: -2^63 to 2^63-1: 64 bit signed
	* **float**: 32 bit IEEE
	* **double**: 64 bit IEEE
* IEEE is the standard approved for representing floating point numbers on computers
	* The standard has been widely adopyed
* Java uses four types of integers: **byte, short, int, and long**
* Since double is twice the size of float, double is known as *double precision* and floats are known as *single precision*
* You can also do nextInt(), nextLong(), nextDouble(), etc

### Numeric Operators
* While both operands of a division are integers, the result of the division is the quotient and the fractional part is truncated, so 5 / 2 = 2, not 2.5
* The % or **modulo** operator yields the remainder after division
	* While mostly used on positive numbers, it can also be used on negative numbers
		* The result is ONLY NEGATIVE IF THE DIVIDEND IS NEGATIVE
		* -7 % 3 = -1, -26 % 8 = -2, but 20 % -13 is 7
* The + and - operators are both unary and binary
	* A **unary** operator has only one operand, and a **binary operator has two**
		* So -5 is a unary operator, and 4 - 5 is a binary operator

### Exponent Operations 
* The `Math.pow(a, b`) method can be used to compute a^b
	* The *pow* method is defined in the math class in the Java API

### Numeric Literals
* A *literal* is a constant value that appears directly in a program, such as 25 and 0.5
* *Integer Literal*
	* An integer literal can be assigned to an integer variable as long as it can fit into a variable
	* A compile error will occur if the literal is too large for the variable to hold
		* For example, byte b = 128 doesn't compile because the range of a byte is -128 to 127
	* An integer literal is assumed to be of the int type. To denote an integer literal of the long type, append L or l to the end, such as `2147483648L`
* *Floating Point Literals*
	* Floating point literals are written with a decimal point
		* By default, a floating point is a double value, but you can make a number a float by adding an f of F to the end, such as `100.2f`
	* Floating point literals can be written in scientific notation in the form a x 10^b
		* EX: `1.23456E2`
		* All floating point literals are actually stored in scientific notation internally
* Java actually allows you to use underscores between two digits in a number literal, such as `long ssn = 232_45_4519;`
* The float data type precision for digits is up to 6 to 7 decimal digits
	* Double type provides precision for up to 15 or 16 digits

### Evaluating Expressions and Operator Precedence
* Writing a numeric expression in Java involves a straightforward translation of an arithmetic expression using Java operators
* Multiplication, division and remainder operators are first
	* Then addition and subtraction operators last
* **Augmented operators** are operators such as += and -= etc
	* These operators can also be expressions, so `System.out.println(x+=1)` is valid

### Increment and Decrement Operators
* The -- and ++ are two shorthand operators for incrementing and decrementing a variable by 1
	* These are handy because we often just want to increment by 1
* You can put the operators before and after which has different effects
```java
int i = 1;
int j = ++i; //j == 2 and i == 2
int j = i++; //j == 1 and i == 2
int j = --i; //j == 0 and i == 0
int j = i--; //j == 1 and i == 0

int newNum = 10*i++;
//that has the same effec as:
int newNum = 10*i;
i += 1;
```
* Any expression can be used as a statement: False
```java
x += 2; //statement
System.out.println(x+= 2) //expression
```
* If you have `System.out.println(x = y = x = 0)`, this is actually valid and works, will print out zero

### Numeric Type Conversions
* Floating point numbers can be converted into integers using explicit casting
	* Can you perform binary operations with operands of different types? Yes. Integer * Floating point = Floating point
* You can always assign a value to a numeric variable whose type supports a larger ranges of value, this is called **widening a type**
	* For instance, you can assign a long value to a float value
	* However, you cannot assign a value to a variable of a type with a smaller range without explicit **type casting**
		* This is called **narrowing a type**
		* The syntax to cast a type is to specify the targets type in parentheses, followed by the variables name, such as `(int) 1.7`
* Casting is necessary if you are assigning a value to a variable of a smaller type range, such as assigning a double to an int value
	* Otherwise, it will cause a compiler error
* Casting does not change the variable being cast
* In Java, an augmented expression of the form x1 op= x2 is implemented as `x1 = (T) (x1 op x2`, so the following code works:
```java
int sum = 0;
sum += 4.5; //sum becomes 4 after this statement
sum += 4.5 is equivalent to: sum = (int) (sum + 4.5);
```
```java
int i = 1;
byte b = i; //doesnt work because EXPLICIT cast is required
byte b = (byte) i; //this works
```
* **Integer Overflow**
	* When a variable is assigned a value that is too large (in size) it'll overflow

# Selection: Chap 3
* Boolean is **true/false**
	* Lowercase! So not True and False like java
* Block braces can be omitted if they enclose a single statement. For example, the following statements are equivalent
```java
if (i > 0) {
	System.out.println("i is posiitve");
}
AND
if (i > 0)
	System.out.println("i is positive");
//you can also do

if(number % 2 == 0)
	System.out.println(number);
else
	System.out.println("bruh");


If you have a semicolon at the end of an if statement, its the same as an empty clock
if (xyz); IS THE SAME AS if(xyz) {};
```
* You can use `Math.random() to obtain a random double between 0.0 and 1.0, exclusive of 1.0 `
* In java, you cant do `1 <= number <21`, you have to do `number >= 1 && number <= 20;`
### Switch Statement
* A switch statement executes statements based on the value of a variable or an expression
```java
switch (status) {
	case 0: compute tax for single filers;
			break;
	case 1: do X
			break;
	case 2: do Y;
			break;
	default: do X;
	
}
```
* The switch expression must have a value of **char, byte, short, int, or String type** and must be enclosed in parentheses
	* So its only some primitive types! Plus String
* The value1... valueN must have the same data types
* When the value in a case statement matches, all the next statements will run until a break statement or the end of the switch is reached
	* The default case (WHICH IS OPTIONAL), can be used to perform actions when none of the specified cases matches the **switch-expression**
	* The keyword break is optional
* For switch statements, curly brackets are required

* **Ternary Condition**
	* `y = (x > 0) ? 1 : -1;`
	* result = (boolean expression) ? ifTrue : ifFalse;


## Operator Precedence and Associativity
* **Operation Precedence Chart**
	* PRECEDENCE ORDERED
	* var++ and var-- (postfix)
	* +, - (unary), --var, ++var (prefix)
	* (type) Casting
	* !(Not)
	* * / %
	* + - (binary)
	* <, <=, >=, >
	* == !=
	* ^ (exclusive OR)
	* &&
	* ||
	* =, +=, -=, /=, etc
* Assignment operators are **right associative**, so 
	* `a = b += c = 5` is translate to `a = (b += (c=5))`
*** 
### Mathematical Functions, Characters, and Strings
* Math.pow(a, b)
* Math.sqrt(x)
* Math.log10(x)
### String
* The char type represents only one character