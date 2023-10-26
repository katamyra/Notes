> [!info] An ArrayList is a combination of an **Array** (fixed size, same data type) and a data structure called a **List** (which can change in size, same data type)
>

```java
import java.util.ArrayList;

ArrayList<String> list = new ArrayList<String>(20);
list.add("jane");

list.add(1, "Lexi");

s = list.set(0, "Paula"); //sets element 0 to Paula
list.add(s);
```

>[!info] Useful ArrayList Methods
>boolean isEmpty()
>int size()
>boolean contains(Object)
>int indexOf(Object)

ArrayList is implemented using an array with the dynamic resizing occurring “behind the scenes”. For this reason, ArrayList is <u> not the most efficient of the collections Java provides, so if you only need an array of fixed size, dont use ArrayList </u>.

> [!info] **Generics** - the use of parameterized types in class and method definitions
> This is the \<String>, etc in the ArrayList definitions.
> 
> We can write a generic class or method using generics so that it can handle any time of different objects. **Generics also allow us to parameterize the types of variables/fields.** 
> 

Originally ArrayList stored objects, which would provide no real compile-time checking that we are using it correctly (ie storing the same data types in it). 

After Java 5, we can now parameterize the data type stored with ArrayList and the methods will “adjust” to that time, granting is additional compile-time checks for type-safety

**This means the key benefit to generics is to enable errors to be detected at *compile time* instead of at runtime**

Ex:
```java
RUNTIME ERROR EXAMPLE
Comparable c = new Date();
System.out.println(c.compareTo("red"))

COMPILE TIME ERROR EXAMPLE
Comparable<Date> c = new Date();
System.out.println(c.compareTo("red"))
```

