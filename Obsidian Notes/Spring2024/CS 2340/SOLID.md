# What are design principles?
* Guidelines for designing software based on **object oriented programming** 
>[!info] We aim for software to:
>1) Easy to **understand**
>2) Easy to** extend**
>3) Easy to **maintain**

> [!info] We try to *avoid*
> 1) High **rigidity** (one change == many changes)
> 2) High **fragility** (one change → new bugs)
> 3) High** immobility** (no way for code reuse)
> 4) High **viscosity **(resistance to extend/change)

* **Design Principles in OOD**
	* Enhance *code reusability*
	* Facilitate *maintainability*
	* Enable system scalability
	* Improve **code quality**
	* Improve team 

> [!info] ***SOLID***
> 1) Single Responsibility
> 2) Open/Closed Principle
> 3) Liskov’s Substitution Principle
> 4) Interface Segregation
> 5) Dependency Inversion
> 
> Focusing on **design** of individual classes and *relationships* between them

# Single Responsibility Principle
* **A class should only be responsible for one thing!**
	* Thus, it only has one reason to change
* *Example*
	* Instead of having a Restaurant class and a RestaurantManager class w/cook and clean methods, have a Cook and a Janitor class with a Restaurant class that creates cooks and Janitors

# Open/Closed Principle
* Software entities should be **open** for modification and **closed** for modification

# Liskov Substitution Principle (LSP)
* Objects of a **superclass** shall be replaceable with objects of its **subclasses** without affecting the correctness of the program
	* So subclasses should be able to do the same thing that its superclass can do and similarly
		* Aka: don’t have penguin extend bird because penguins can
	**EXAMPLE OF GOOD CODE**
![[Screenshot 2024-01-17 at 7.56.21 PM.png]]

# Interface Segregation Principle (ISP)
* No client should be forced to depend on methods it does not use
	* **Break down** large interfaces into smaller ones
![[Screenshot 2024-01-17 at 8.07.09 PM.png]]
![[Screenshot 2024-01-17 at 8.07.37 PM.png]]
# Dependency Inversion Principle (DIP)
* High-level classes should not depend on low-level ones
	* **Use abstraction**