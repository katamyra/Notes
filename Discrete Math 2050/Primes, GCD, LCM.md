## Primes
* All integers greater than 1 are divisible by at least two integers, because a positive integer is divisible by 1 and itself
	* An integer p greater than one is called **prime** if the only positive factors of p are 1 and p
	* A positive integer that is greater than 1 and is not prime is called **composite**
* **The Fundamental Theorem of Arithmetic**
	* All integers greater than 1 can be written uniquely as a product of prime numbers where the prime factors are written in order of non-decreasing size

## GCD
* To find the GCD from two prime numbers, write out the prime factorizations and for each number choose the minimum
* **GCD Theorem 1:** Given the positive integers a and b. ab = gcd(a, b) * lcm(a, b)
* **Euclidean Algorithm**
![[Screenshot 2023-10-23 at 2.13.24 PM.png]]
Example In Action:
![[Screenshot 2023-10-23 at 2.20.17 PM.png]]
* The integers a and b are **relatively prime** if their greatest common divisor is 1
	* Basically even if the integers themselves aren’t prime, if their GCD is 1 then that means they are relatively prime to each other
	* 15 and 22 are relatively prime because their GCD is 1
* The integers a1, a2, … an are **pairwise relatively prime** if gcd(ai, aj) = 1 whenever 1 ≤ i ≤ j ≤n.
	* This means that in the list, every integer is pairwise relatively prime to everything after it
* **Eulers Totient Function**
	* *Euler’s Totient Function* allows one to count the number of positive integers less than n that are *co-prime*, or *relatively prime* to n
	* Also known as the Phi function
	* Let p1, p2, ..pk be the distinct prime factors of n, then
![[Screenshot 2023-10-23 at 2.27.05 PM.png]]