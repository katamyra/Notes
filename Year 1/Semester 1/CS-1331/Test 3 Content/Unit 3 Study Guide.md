# ***Interfaces***
* Another level of abstraction
* A contract that defines what a class can do
* Often have *-able* in the name since they are describing functionality
	* Uses the *implements* keyword following class names
* All members are implicitly **public**, so you can omit the public modifier
	* **Methods are *non static* and *abstract* by default**
		* So no need for abstract modifier
	* Methods can be **static**
	* Fields must be constants (**static final**)
		* So you can omit constants
	* Cannot have instance fields or constructors
```java
public interface Spreadable {
	double GRAMS_PER_TBSP = 14.79; //public static final
	void spread(); //public abstract by default
	default void taste() { //default method has implementation
		System.out.println("Tasting!");
	}
}

public class PeanutButter implements Spreadable {
	public void spread() {
		System.out.printf("Spreading %.2f",  Spreadable.GRAMS_PER_TBSP)
	}
}
```
* **Interfaces can extend another interface using the extends keyword**
* An implementing concrete class **must** override **all** abstract methods in the interface
	* Abstract class implementing an interface doesn’t have to override the abstract methods
	* Interface implementing an interface doesn’t have to override the abstract methods of the interface
* **Interfaces can be the static type of variable**
	* Objects assigned to the variable need the “is-a” relationship w/ the interface
* An interface with only one abstract methods is called a **functional interface**
![[Screenshot 2023-11-09 at 1.03.18 AM.png]]
## Comparable Interfaces
* Instances of a class that implements the **Comparable Interface** can be compared to other objects (usually of the same type)
	* Means we can say if a object is less, equal, or greater than another objects
* Good for sorting
* Comparable has one abstract method (**functional interface**) 

# ***ArrayLists***
* ArrayLists are a data structure that is a type of **List**
	* Lists are ordered sequence of elements where duplicates are allowed
	* **Arraylists implement the List interface**
* In Arraylists, data is stored in an array behind the scenes, and data is stored contiguously in memory
* Inside `java.util` package
* Elements in arrraylists are **ordered** and **indexed**
	* Arraylists dynamically resize if we need more capacity
	* Arraylists **cant hold primitive types**, so we use *wrapper classes*
* ***Useful Arraylist Methods***
	* void add()
	* boolean add()
	* Object remove(int index)
	* boolean remove(Object o)
	* boolean contains(Object o)
	* void clear()
	* Object get(int index)
	* int size()
* You can create array list without defining type
	* But if you don’t, this can cause type casting errors
	* If you don’t declare, can you put in any object?
```java
ArrayList list = new ArrayList();
```

# ***Generics***
* Generics allowed for the **parameterization** of classes
	* Means that the type of a variable is parameterized rather than being fixed
* When we pass in a type for the type parameter, it must be a **reference type**
* *Primary Benefits of Generics*
	* Allows detection of type-related errors at compile time instead of runtime
	* Allows us to write a generic implementation that works for a variety of types
* When we use generics, we can use any identifier, but we usually use E for element or T for type
* **Generics must take a reference type, not an reference type**
* Cannot create instances of a type parameter, so `T obj = new T();` doesn’t compile
	* Cannot create an array of parameterized types either
* Type parameters can be the type of return values, parameters, and variables
	* *You can have multiple type parameters*
## Generics: Wildcards
* **There are two types of wildcards: *\<? Super  X> and \<? extends Y>***
	* The extend is the **upper bound**, meaning whatever is utilizing the generic for parameterization can use **all classes that extend X**
	* The super is the **lower bound**, meaning whatever is utilizing the generic for parameterization can use all the classes that are a **supertype of whatever something is**
* These (I believe) are **inclusive**
## Generic Methods
* Generic methods are those that introduce their own type parameters 
	* This is most commonly done for *static methods* since it cant access the class’s type parameter, but can also be done for instance methods and constructors
* Type parameters must be specified within angle brackets immediately before the turn type
* A methods type parameters are limited to within the scope of the method
## Type Erasure
* Java compiler removes/erases type parameters after compilation
	* The **generic type** is replaced with the bounded type or Object if unbounded
* One consequence is that we *cannot instantiate an array of parameterized type*
* Since generics were created to enforce stronger type-checking at compile-time, they are removed after so there is less overhead
# ***Big O / Asymptotics***
* How can we analyze how “good” an algorithm is?
	* We need a consistent way to analyze the efficiency of an algorithm
* **Asymptotics: we can analyze the growth rate of the number of operations in an algorithm as the input size grows large**

# ***Searching***
## Linear Search
* Iterate through the list and make one comparison per element in the input
* *Time complexity: O(n)*
## Binary Search
* If an array is **sorted**, we can use binary search to find an element
* Must faster than *linear search*
* **Steps**
	* Determine which element is in the “middle element”. Compare the middle element to the target element. If it is equal, the element was found.
	* Determine if the target element is on the left or right side of the element, and remove the other half
	* Repeat until element is found or there is nothing more to compare with
* *Time Complexity: O(logn)*
# ***Sorting***
## Bubble Sort
* **Main Idea**
	* Iterate through the list and swap adjacent elements that are unsorted
		* After each iteration, the largest element in the unsorted is **bubbled** to the end of the unsorted subset (equivalently, the beginning of the sorted sublist)
			* Over time, this causes the largest elements to be pushed to the end, “bubbling” them to the right
	* After k passes, the largest k elements have bubbled into their final positions
* *Time Complexity: O(n^2)*
```java
static void bubbleSort(int arr[]) {
	int temp;
	for (int i = 0; i < arr.length - 1; i++) {
		for (int j = 0; j < arr.length - i - 1; j++) {
			if (arr[j] > arr[j + 1]) {
				temp = arr[j];
				arr[j] = arr[j+1];
				arr[j+1] = temp;
			}
			
		}
	}
}
```
## Selection Sort
* **Main Idea**
	* “Select” the smallest element in the unsorted sublist and swap it with the beginning of the unsorted sublist
	* After each iteration, the next smallest element has been added to the end of the sorted sublist
	* After k passes, the smallest k elements have been swapped into their final positions
* *Time Complexity: O(n^2)*
```java
for(int i = 0; i < arr.length - 1; i++) {
	int min_index = i;
	for (int j = i + 1; j < n; j++) {
		if (arr[j] < arr[min_index]) {
			min_index = j;
		}
	}
	int temp = arr[min_index];
	arr[min_index] = arr[i];
	arr[i] = temp;
}
```
## Insertion Sort
* **Main Idea**
	* *Insert* the first element of the unsorted sublist by bubbling it towards the beginning of the list until it is in relatively sorted order
	* After each iteration, one more element has been relatively sorted
	* After k passes, the first k+1 elements have been inserted into relatively sorted order but not necessarily in their final positions
* *Time Complexity: O(n^2)*
```java
for (int i = 1; i < n; i++) {
	int key = arr[i];
	int j = i - 1;
	while (j >= 0 && arr[j] > key) {
		arr[j+1] = arr[j];
		j = j - 1;
	}
	arr[j + 1] = key;
}
```
## Merge Sort
* **Main Idea**
	* Divide an array into two different halves and apply a merge sort on each half again
		* Eventually you get to just two elements which can be reordered
	* Then go backwards and “conquer the array”
		* Merge all the sorted sublists together in sorted order
![[Screenshot 2023-11-09 at 3.14.29 PM.png]]
* *Time Complexity: O(nlogn)* //Not Sure
# ***Exceptions***
* Extends, not implements Exception
* **Exceptions** are actually objects that define unusual or erroneous situations **thrown** by a program, and can be **caught or handled**
	* **Errors** are similar but are typically unrecoverable. Ie: some problem with the virtual machine or the system itself
* When exceptions happen, these are our options:
	* Not handle and allow program to terminate’
	* Handle it when it occurs (*catch the exception*)
	* Handle exceptions elsewhere in the program (throw the exception or let the exception progress upward)
* When you want to log/output some information during exception, using ***getMessage()*** method
* Theoretically you can just catch (Exception e), to cover any possible exception, but this is *lazy* and not recommended
* **Checked vs Unchecked Exceptions**
	* Unchecked exceptions are generally not caught and requires no throw clause at compile time (Runtime exception)
		* This is usually because theres nothing we can do about them or they are rare
	* *Checked exceptions* must either be caught or listed in the “throws clause” of a method or the code will not compile
		* So you add `throws exceptionName` in the method header
# ***Iterable and Iterator***
* An **iterable** is any object in Java that can provide an iterator, which is then used to iterate over elements of the iterable
	* This process can be done using a for-each or enhanced for loop
		* The syntax is for (iterable: iterator), and you cannot edit the iterator
* **Iterator\<E>**
	* Defines the methods of an object that can iterate over a collection
		* **boolean** hasNext()
			* Returns whether there are more elements to be iterated over
		* E next()
			* Returns next element in iterator
	* Is in the java.util Package, so it needs to be imported
* **Iterable\<T>**
	* Defines the methods of a collection that can be iterated over
		* **Iterator\<T> iterator()**
			* Returns an Iterator object, which can iterate over a collection of type E elements
	* A collection that implements Iterable can be iterated over a collection of type E elements
* **ITERABLE IN JAVA LANG, but Iterator in java.util**
* Class needs to explicitly state `implements Iterable` to use it in a for each loop

# ***File I/O***
* **Stream** - flow of data - input and output streams between your program and I/O devices in the system
* *I/O In Java*: Text and binary files, but in this class we mostly focus on text files
* Imports: import java.io.*
* **File Class**
	* File classes are not a stream, but rather are just *abstract representations* of files and pathnames
	* We can use the *scanner class* to read files just like we did with console input by giving it a File on construction
* Can use **FileReader** instead, but you must close it after
## Output
* Three Different methods for Output: **PrintWriter(File), PrintWriter(FileWriter), and PrintWriter(FileName)**
	* Need to close *print writer* after!
![[Screenshot 2023-11-09 at 2.50.24 PM.png]]
* **.flush()** method immediately moves output to the disk
	* JVM decides when theres enough data to actually push the IO Buffer to the disk, but this method makes it happen automatically
	* Sometimes this might happen if the code ends so quick that it cant be flushed automatically
## File IO Exceptions
* File I/O often generates many **checked exceptions**
* ***IO Exception*** is a superclass for lots of other exceptions such as **FileNotFoundException**
	* Meaning you need to either: mark the method as throws **IOException** or catch the exception

# ***Recursion***
* **Recursive call** - a call made to the same method as resident (a method invoking itself)
* *Recursion is not the same as calling yourself, because a new “copy” (**method activation**) is produced*
	* This method gets pushed onto the **stack** and consumes memory
* **Recursion Rules**
	* You need to establish a *base case* that is “trivial” and does not do the recursive call
	* **Recurrence relation**: make progress towards the base case over time
```java
Factorial.java
public static int factorial(int n) {
	if (n== 0) {
		return 1;
	}
	return n * factorial(n-1);
}
```

# ***ADT’s***
* An **abstract data type (ADT)** is a data type whose creation and update are constrained to a specific well defined operations. A class can be used to implement an ADT
	* **Abstract** - because we don’t talk about the underlying representation (heart concept abstract)
* **ArrayList Pros and Cons**
	* Pros: the following methods for accessing and modifying the list through an index are efficient 
		* get(index)
		* set(index)
		* add(Object o)
	* Cons: the following methods are inefficient
		* add()
		* remove()
	* This **contract** is usually represented by an interface, defines the set of behaviors
		* Concrete data structures implement an ADT
* **List**
	* ADT for storing elements in an *ordered* fashion. All elements have an index representing their position.
## LinkedLists
* A **linked list** contains *Nodes* that hold a reference to the next item in the list
	* Implements the **List\<T>** interface
* Consists of nodes that hold data and a reference to the next node
	* The *data* field has the same type as type parameter (all nodes hold same data type)
	* The *next* field has type Node and serves as a reference to the next node
* **Singly linked list** - nodes only have a reference to the next node
	* **Doubly linked list** - nodes have a reference to both the previous and next nodes
* **Head**: a reference to the first node in a list
	* **Tail** (*optional*): a reference to the last node in a list
* **Operations On Linked List**
	* Adding an element
	* Removing an element
* Iterating Over Linked List
```java 
Node curr = list.head;
while (curr != null && curr.next != null) {
	curr = curr.next;
}
curr == list.tail //This is Trueimp
```

 

# Things to Study
* **Iterator vs Iterable**
	* Iterator
		* boolean hasNext()
		* E next()
		* void remove() //no need to implement
	* Iterable
		* iterator() Iterator\<T>
* **Abstract vs Interface**
* All the sorts
	* Sorts implementations
* Polymorphism
* Generic vs lower bound
* Exceeds 

# Things to Note
* Cannot create instance of an interface
	* Test can you create instance where dynamic type is concrete, and static type is an interfafce
* ArrayList\<X> new ArrayList<>(); can only hold type 
* Default allows you to add an implementation within interfaces
	* default == add method body
	* 
