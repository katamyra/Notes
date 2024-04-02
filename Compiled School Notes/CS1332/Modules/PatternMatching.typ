#import "../../../template.typ": *

= Pattern Matching


== Boyer Moore Algorithm

#definition[
  *Last Occurrence Table*: records the index of the last occurrence of the letter.
  We store it in a pair \<letter, index> in a hashmap, and letters not in the alphabet of the pattern as marked as null, or returned as -1 in the functionality
]

*Boyer Moore Last Table(pattern)*
```java
m = pattern.length 
last = HashMap<character, index> 
for all i from 0 to m-1
  last = put(pattern[i], i)
end for 
return last
```
#theorem[
*Actual Search Algorithm*
+ Create the LSOT to optimize shifts past mismatches 
+ Move right to left in pattern 
+ If there is a match, continue comparing text and pattern 
+ If there is a mismatch, look to see if text character is in the alphabet
   - If the char is in the alphabet, align them 
   - If the char is not in the alphabet, then shift past mismatched area algotegher
]

