Recall that constructors create new objects in memory and a reference variable that is assigned an object really holds a reference to the object. When two variables refer to the same object, they are considered *aliases*. 

> [!info] Shallow Copy vs Deep Copy
> What if the instance data of a class contains references to other objects?
> 
> Copying the value of that data only results in a *copy of the reference*. If the object referred to has its state changed, it’ll be “changed” in both instances of the containing class because the reference to that object are aliases.
> 
> A **deep copy** will create a new instance of an object with the same state as the original, which prevents aliasing.
> 


