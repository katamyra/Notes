x`x* **Base 2**: Powers of two instead of powers of 10 
	* Addition and subtraction in base 2 is very similar to normal addition and subtraction, works in the same way 
* However, it doesn’t work well for negative numbers, so we need to find a better way to represent **signed integers**
	* One way to do this is by reserving 1 bit of the number for positive/negative values
		* These are called **signed magnitude numbers** and while they are easy to work with, they don’t work well with hardware in terms of addition and subtraction
		* Used back in the punch card days
* **1’s Complement**: instead of using a signed bit to indicate magnitude, if its a negative numbers, we *complement*, or flip all the bits
	* So 10010 becomes 01101
	* *This causes the negatives and positives to cancel each other out mathematically*
	* This method is still stuck with plus and minus zero representing the same numbers
* **2’s Complement**: 
	* “Wraps” around the number line, so for 4 bits [-8, 7], the value of 7 is 0111 and the value of 8 is 1000, so it goes to the “next” value
	* Used in almost all computers manufactured today because its really cheap hardware wise
	* Properties
		* First bit still indicates the sign (as long as you tolerate zero being positive)
		* Addition works if you don’t wrap around
	* *You can find the two’s complement of any number by flipping the bits and adding 1*
	* A two’s complement conveniently represents the additive inverse of the originally represented number
	* **Converting 2’s complement to decimal**
			* Flip the bits
		* Add one
		* Convert to decimal
		* Mult by -1
		* Ex:
			* 0100
			* 0100
			* 0101
			* +5
			* 5 * -1 = -5
	* **When do we get euclidean vs non euclidean answers?**
		* Add two numbers: we have a problem if
			* We get a carry into the sign bit but no carry out
			* We get a carry out of the sign but not carry on
			* **Carry in means the borrowed value going into the most significant bit**
				* **Carry out is what comes right after (one bit to the left)**
				* These need to match in order for us to get euclidean answers
		* *If we add a positive and negative number we won’t have a problem*
* **Sign Extension**
	* How to add a 4 bit and 8 bit number?
		* Fill in the new bits on the left (of the smaller bit number) with the value of the sign bit
	* **This is a characteristic of 2’s complement numbers that we have to remember**
* ***WHAT HAPPENS IF WE ADD A NUMBER TO ITSELF?***
* **Fractional Binary Numbers**
	* Things to the right of a decimal point have fractional values
	* The place of the first bit to the right of a binary point is **2^-1**
	* 1.01 = 1 + 2^(-2) * 1
* Be able to do math with: unsigned, 2’s complement
	* Only understand concept of: signed magnitude, one’s complement

# Bitwise
* *Traditional boolean functions are defined on boolean values (T/F)*
	* When we have two strings of bits, we often apply a boolean function to pairs of respective bits in the two strings
	* We refer to this operation on two arrays of bits as a “bitwise operation”
* So we might write 0100 AND 0011 = 0010 meaning that we should apply the **AND function** to each pair of bits
	* **NAND** = not and, *complement* of AND
* **Bitwise OR = add operation**
* XOR is good for testing equality/inequality
	* If same, you get 1, otherwise 0
* *Bit Vectors*
	* If we want to know one thing about a list of objects we can create a list of booleans packed in a single byte, etc
		* This is usually only used for space efficiency 
## Manipulating Bits
* We often use a constant (**mask**) with a boolean function (four bit examples)
* **Clear**
	* wxyz & 1111 = wxyz
		* Put a zero wherever you want to clear it
		* wxyz & 1101 = wx0z
* **Set**
	* wxyz | 0100 = w1yz
* **Toggle**
	* wxyz ^ 1000 = w’xyz (flips it)
* *To put a 1 in any position n in a bit mask, shift left by n*
	* 1 << 2 = 0100
* *To put a zero in a position in a mask, put a one in that position and complement*
	* ~(1 << 2) = 1011

# ASCII
## Unicode
* Each character gets a number (AKA *a code point*)
	* This is ASCII’s big brother and his backwards compatible with ASCII
* **UTF-8**: How UNICODE is encoded in a file
