* Originally ArrayList shared objects, which would provide no real compile-time checking that we are using it correctly (ie storing the same data types in it)
	* But as of Java 5, we can **parameterize the data type stored within ArrayList and the methods will “adjust” to that type**, granting us additional compile-time checks for *type safety*
	* **This means that the key benefit to generics is to enable errors to be detected at ***compile time rather than runtime***
* **Comparable** revisited
	* If we look closely at the API, we’ll see Comparable is parameterized
		* *Comparable\<T>*
		* *int compareTo(T o)*
		* T is the placeholder for the type
* Using Generics