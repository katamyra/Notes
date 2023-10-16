* Arrays allow us to use the same identifier (ie variable name) to access multiple values 
* Arrays store a fixed-size sequential collection of elements of the same type (homogenous) and can be thought of as a list of values that are numbered (indexed) starting with a 0
	* Each of the values is stored within what is called an element of the array
* Arrays are objects, so the variable that stores an array is a reference variable
* `datetype[] arrName = new datatype[size]`
	* For this class, we put the brackets next to the data type
	* Array's sizes cannot be changed, the length of an array is a fixed length within the array object
		* `myList.length`
* Arrays can be composed of primitive or Object types, but they must be homogenous
	* We cannot mix different types in a single array
* Java does *auto bounds checking* so attempting to access positions outside the limits will give an `ArrayOutoFBoundsException`
	* THIS IS RUNTIME! error
* We can also use a **for each loop** which is a shorthand loop for types that implement the java.util.Iterable interface
```java
for (dataType varName: collection) {
 //for each dataType in collection
 //do stuff
 varName.method();
}
//ex Below
for (double element: a) {
	sum += element;
	System.out.println(element)
}
```
* What if we want to make an array bigger?
	* Must create a new array of the larger size and copy the elements over because arrays are fixed size
* We can also pass a variable number of arguments to a method and they will be treated as an array within the method