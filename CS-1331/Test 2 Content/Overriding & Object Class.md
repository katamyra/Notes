>[!info] Overriding is when a child class defines a method with the **same signature** as the parent. Overriding means to provide a new implementation for a method in the subclass.
>
>Unlike *overloading*, which is providing multiple implementations for the same method name, overriding essentially replaces the parent class’s implementation with the child class’s.
>
>**Static methods can be inherited from a parent, but not overriden (the child class simply “hides” the parent’s static method instead of replacing the implementation**
>
>Overriding allows two objects related by inheritance to use the same naming convention for the methods that accomplish the same task in different ways. 
>
>We can use the @Override annotation before the method signature to ask the Java compiler to confirm at compile time that we’ve actually *overriden* a method instead of just *overloaded* it.
>
>

>[!info] **Object** class - In Java, all classes ultimately derived from it (it is the base class for all others)
>
>**Methods**
>equals()
>toString()
>hashCode() –> *returns the memory address of an object, but this isnt guaranteed either according to the documentation*
>clone()
>
>
>
>

> [!info] HashCode Method
> You should override the **hashCode** method whenever **equals** is overridden to *ensure that two equal objects return the same hash code*
> 
> Invoking the hashCode method on an object multiple times in a program return the same integer each time *if the data has not changed*. 
> 
> Two *unequal objects* may have the same hash code, but you should implement the **hashCode** method to reduce the number of these collisions
> 
> 
