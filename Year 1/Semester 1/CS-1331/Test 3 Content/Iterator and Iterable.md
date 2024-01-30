* In Java, an **Iterable** is any object that can provide an *Iterator,* which in turn can be used to iterate over the elements in the **Iterable**
* For example: if **L** is a class that implements *Iterable\<String>* then 
```java
for (String value: L) {
	System.out.println(value);
}
```
```java
public interface Iterable<E> {
	Iterator<T> iterator(); 
	//some default methods
}
public interface Iterator<E>
	boolean hasNext();
	E next();
```
