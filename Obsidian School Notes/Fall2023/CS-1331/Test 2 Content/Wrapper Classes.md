> [!info] Wrapper classes are a way to treat primitives as if they are objects.
> 
> This allows use to use some features of java that cannot be used normally. These features are a part of the `java.lang` package, which means they do not need to be explicitly imported into your programs to use them. 
> 
> The wrapper classes are easy to use and are nearly seamless due to two main features build into java to automatically convert between wrapper classes and primitives.

> [!info] Autoboxing is when Java converts from the primitive type to the wrapped variable type
> 
> On the other hand, **autounboxing** is when Java converts from the wrapped variable classes to the primitive type. 
> 
> Remember to be careful when autounboxing because *it can cause a null pointer exception to occur due to the implicit call to the method to get the primitive value from the wrapper object.* The following causes an error
> ```java
> Integer myInt;
> int val = myInt;
> ```
> 

