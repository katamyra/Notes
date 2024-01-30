The **static type** of a variable is the type at *compile time*, ie: what type the variable id declared to be
The **dynamic type** or a variable is the type of the *object* itself thats references at runtime

```java
Person p; //static type of p is Person
p = new Student(); //dynamic type of p is Student
p = new Dentist(); //dynamic type of p is Dentist
//static type of p is still Person
```

Keep in mind that these types apply *only to the variable*, and the objects type always stays the same. Just because we refer to the Student and Dentist as a person doesn’t mean those objects stop being a Student or Dentist.

>[!info] Casting and Class Hierarchy
>**Upcasting** - This is when you cast a lower class into a higher class
>```java
>WorkerBee workerBeeObject = new WorkerBee();
>Employee e = (Employee) workerBeeObjects;
>```
>This will always compile and run, but may be unnecessary because *WorkerBee* already inherits stuff from *Employee*
>
>**Downcasting** - This is when you cast a higher class into a lower class
>```java
>Employee employeeObject = new Manager();
>Manager m = (Manager) employeeObject;
>```
>This will always compile but can create runtime exceptions.
>
>**Sidecasting** - Casting something to another class of similar hierarchy.
>```java
>WorkerBee workerBeeObject = new WorkerBee();
>Manager m = (Manager) workerBeeObject;
>```
>This will <u> never </u> compile.

> [!info] **Polymorphism** means that a variable of a supertype can refer to an object of subtype
> ```java
> Animal a1 = new Fish();
> ```
> This works because Fish “is-a” Animal. We can assign or substitute a member of a subclass for a parent class **but not vice-verca**

