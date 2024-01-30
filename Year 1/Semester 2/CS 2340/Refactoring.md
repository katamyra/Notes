*  Small, independent techniques to apply transformations to a program, with the goal of improving its design without changing its functionality
	* **Goal:** keep programing readable, understandable, and maintainable 
	* **Key feature:** behavior preserving - make sure the program works after each step; typically, small steps
## Why Refactor?
* **Requirements Change** - different design needed
	* Especially in Agile 
* **Design needs to be improved** - so that new features can be added; design patterns are often a target
* **Sloppiness by programmers** - copy & paste for a new method
* ***Refactoring often has the effect of making a design more flexible***
## Examples of Refactoring
* **Rename**
* **Collapse Hierarchy**
	* If a superclass and subclass are too similar → merge them
* **Consolidate Conditional**
	* If there are a set of conditionals with the same results → combine and extract them
* **Decompose Conditional**
	* If a conditional statement is particularly complex (call tell what but obscures why)
		* Then extract methods from conditions, give the right name to the extracted method
		* ![[Screenshot 2024-01-17 at 8.30.18 PM.png]]
* **Extract Class**
	* If a class is doing the work of two classes, create a new class and move the relevant fields/methods
	* **Compiles with single responsibility, high cohesion, and low coupling**
* **Extract Method**
	* If there is a cohesive code fragment in a large method, *create a method using that code fragment, replace code fragment with a call to the method*

* Automated tools are very important since there is no time to make changes manually, without prompt, or compulsory quality changes

# When to Refactor?
* When you find you have to **add a feature** to a program, and the program’s code is not structured in a convenient way to add the feature, *first refactor the program to make it easy to add the feature, then add the feature*
* During a **code review**: may be last change to tidy up the code before it becomes final
* **When fixing a bug:** bugs in code live in the darkest, dirtiest places of your code, clean your code and the errors discover themselves

## When Not to Refactor?
* When code to broken (*not a way to fix code*)
* When a deadline is close
* When there is a reason not to lmfao
* 