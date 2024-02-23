#import "../../../template.typ": *

= AVL Trees 

#definition[
  The *balance factor* of a node is the left child's height - right child's height 
]

- What do different values of the balance factor mean? 
  + 0: Perfectly Balanced 
  + 1: Leaning left but ok 
  + neg 1: Leaning right but ok 
  + >= 2: unlabaced to far left 
  + <= neg 2 unbalanced to far right 


#definition[
  In *AVL Trees*, the $|"node.balancefactor"| <= 1$. We chose 1 and not 0 because there are some situations where it is straight up impossible to have a perfectly balanced tree.
]

AVL's help us hit the sweet spot of allowing only a little imbalance while keeping operations efficient. 

== Single Rotations 

These are used when adding or removing a single node to a tree if it becomes imbalanced. 

To perform a rotation when a node has a balance factor of -2: look at the right child first and see if it has a balance factor of 0, -1. Then we can do a simple, single rotations. 

#theorem[
```java
Algorithm leftRotation
1) Node B <- A's right child
2) A's right child <- B's left child 
3) B's left child <- A
4) (ALWAYS FIRST BEFORE 5) Update the height & BF of A 
5) Update the height & BF of B
6) Return B 
```
]
Right rotations are the mirrored opposite of left rotations. 

When to use which rotation?

Use left rotation when 
- node.BF = -2 
- node.right.BF = -1, 0

Use right rotation when (? not sure)
- node.BF = 2
- node.right.BF = 1, 0

#blockquote[
  A nodes balance factor shouldn't go past 2 without a rotation happening
]

