> [!info] Inheritance
> **Inheritance** is the process of defining/deriving new classes from existing ones
> 
> A subclass (child) class automatically contains some or all of the method and data of the original (parent) class. Subclasses can also expand on the state and behaviors of the parent class by adding new fields and methods.
> 
> We use the **extends** keyword to indicate that a subclass extends a parent class. 

> [!info] Access
> A child class can access all private data and methods of the parent. However, it does not inherit the private methods of the parent class. 
> A child class can access protected date and methods of the parents.
> ![[Screenshot 2023-10-16 at 7.39.47 PM.png]]
> **Default visibility** makes a field or method accessible to members of the class itself and to other classes within the same package. Classes outside the package cannot see these “package-private” fields and method
> 
> **Protected Visibility** means protected members are visible to the subclasses of the class, even if they are defined in a different package. This is slightly less restrictive than the default level of accessibility
> 

>[!info] Super and Constructor Chaining
>The **super** keyword gives access to the parent’s members (data and methods). 
>You can think of it as being similar to the **this** keyword, but to refer to the parent class in the parent-child class relationship, most commonly used for invoking a parent class’s constructor.
>
>**Constructor call chaining** is a call to the super constructor of a parent class, which is inserted *even if not explicitly made*
>If the first line of a constructor is not a call to the super constructor, Java will insert a call to the super() no arg constructor. if a no -args constructor doesn’t exist in the parent class and you do not explicitly call another super constructor, **YOU WILL GET A COMPILE TIME ERROR**

> [!info] Super vs Multiple Inheritance
> Java only allows for single inheritance, meaning that a single class cannot inherit from multiple parents. 
> 
> However, there can be a chain of inheritance (Vehicle → Car → Sports Car) which is called **multi-level inheritance** which is not to be confused with *multiple inheritance*
