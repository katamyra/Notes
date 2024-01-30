# Pseudocode

## AddIndex
```java
addIndex(index, data) {
	if index > size or index < 0 
	 - throw exception
	if size = arr.len
		newarr = arr [old len * 1.5]
		for loop to copy values over
		arr = newarr
	for i = size - 1, j >= index; j--
		arr[j+1] = arr[j]
	arr[index] = data
	size += 1
}
INEFFICIENT BECAUSE TWO FOR LOOPS
- resize then shift is slow, go through data once instead

```
BIG O –> O(n