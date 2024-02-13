#import "../../../template.typ": *

= Hashmaps 

#definition[
  *Hashmaps*: array backed data structure that allows us to use "custom" or flexible keys instead of using only indices. It uses a _hashing_ function to dictate which indexes corresponds to what data in the backing array. 
]

#theorem[
  *Where to put Key?*

  ```java index = abs (key.hashCode() & arr.length)```
]

_How do we avoid collisions?_ 

We do this by controlling the size of the backing array. *For hashmaps, it is very bad to let the backing array get full*, because this causes collisions (from the `%` operator). In order to solve this, we resize while there is still space left in the array. 

#theorem[
  $"load factor" = "size" / "capacity"$

  We usually set a maximum allowed load factor in order to avoid collisions. This factor is typically between 0.6 to 0.8, and Java's default is 0.75. After this loadfactor, we resize. 
]

#note[
  *Small Load Factors* has more resizes and fewer collisions, while *Large Load Factors* are more efficient with memory but cause more collisions. 
]

Another way to avoid collisions is to have a _good hashing function_, where different items have different hashes, and a harder goal: similar items have way different hashcodes.  