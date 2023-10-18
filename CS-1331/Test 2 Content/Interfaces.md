> [!info] An **interface** is a class-like construct for defining common operations for objects. 
> 
> Its made of a collection of abstract methods and constants. It is common practice to end the name with -able (Iterable, etc)
> 
> ```java
> public interface Bank {
> 	void deposit(double deposit);
> 	double withdraw(double withdraw);
> 	void audit();
> }
> ```
> A class *implements an interface* if it provides implementations of all the methods in an interface, and it can *have its own other methods too*
> 
> Methods in an interface are *assumed* to be abstract, so we don’t need the **abstract** keyword.
> 
> Starting from Java 8, <u> interfaces can implement static and default methods. </u>

**Dependency Inversion Principle** - High-level modules should not depend on low-level modules. Both should depend on abstractions. Abstractions should not dependent on details, details should depend on abstractions.
Aka. keep it abstract and not specific when you can.

*Any number of different classes can implement an interface, and a single class can implement more than one interface*
```java
public class SuperStore implements Bank, DrugStore, Cleaner
```

> [!info] Default Methods
> In interfaces, you can implement default methods.
> ```java
> public Interface Bank {
> 	default void speak(String whatToSay) {
> 		System.out.println(whatToSay);
> 	}
> }
> ```
> This works, however there can arise issues of **ambiguity**. If there are two interfaces that define the same default method, we MUST clarify which one to use in the implementing class, aka `person.super.speak()` rather than `super.speak()`

> [!info] Static Methods
> In interfaces, you can also implement static methods.
> ```java
> static boolean isNull(String str) {
> 	return str == null 
> }
> ```
> We would call this method through the interface name, such as `Bank.isNull("Im not null!")`

>[!info] Constants
>Interfaces can also have constants.
>```java
>public Interface MyConstants {
>	final static int FEET_PER_MILE = 5280;
>	final static double PI = 3.14;
>}

One way to determine whether to use an **interface vs an abstract teacher** is to think about whether or not you’re describing what something DOES (interface) versus what something IS (abstract class)

An interface describes behaviors (ie methods) that a class supports, while abstract classes describe what objects actually ARE (and can also have instance data). 