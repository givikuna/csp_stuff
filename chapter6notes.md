
<!-- on Stackedit -->

<i>HashTable</i> (in <i>RubyLabs</i> when taking in a word, takes radix26 value of it and then it mods by its length <i> n </i> to find out which row to place the word in

```Ruby

radix26(“video”) % n # n represents the length

```
formula for determining the length:
$$ \sum_{i=0}^{n-1} s[i]*26^{n-1-i} $$

<i>radix26("cat")</i> would be:
$$ = 2*26^2 + 0*26^1 + 19*26^0 $$
$$ = 1352 + 0 + 18 = 1371 $$

example of <i>radix26</i> in <i>LiveScript</i> (<i>prelude-ls</i> & <i>lsse</i>):
```LiveScript
ord  =  -->
	i =  0
	a =  <[a b c d e f g h i j k l m n o p q r s t u v w x y z]>
	while i < len a
		if a[i] is  it  then return i
		i++
	-1

radix26 = -->
	i = dec len it
	j = 0
	sum = 0
	while (<=) 0 it
		sum += ord(it[j]) * (^) 26 i
		i--
		j++
	sum
```

Each row on a HashTable is assigned a list of strings

Methods on HashTable
> lookup: finds the row at which the word is
> insert: inserts the word at the correct location per its radix26 value
> table: allows you to access the array at the specific row

h0 is a method returning the ordinal value of the first letter of the string:
```LiveScript
h0 = --> ord it[0]
```

h1, instead of using the first letter (like h0), uses the first two letters. So, if you were to pass into it <i>"cat"</i> it would evaluate to the same value as if you were to pass into it <i>"ca"</i>. Essentially plugs the first two characters as a string into the radix26 value.
You would normally use h1 for a smaller table
```LiveScript
h1 = --> (+  ord it[1]) (* 26) ord it[0]
# or:
h1 = --> radix26 string-append it[0], it[1]
```

hr is a method that takes in two parameters, the string & the row count
```LiveScript
hr = (s, n) --> r26(s) % n # r26 is an alias for radix26
```

<br><hr>

If you have more than one value in a key, then it is known as a <i>collision</i>. It is preferrable to eleminate these (in <i>HashTables</i> they do not cause errors though). Using powers of 26 as the length of the table is terrible because when modded over this a lot of collisions will happen, using prime numbers as the length avoids this issue (for words that end in <i>"ly", "ss", "able"</i> and such end up having a the number the result of the hr operation for a hash table length of a power of 26).

<i>iord</i> vs <i>ord</i>:
> iord returns the position in the English alphabet (first index at 0)
> ord returns the ascii value of a certain character

If one was to use <i>ord</i> over <i>iord</i> the values will go sky high very quickly, therefore using <i>iord</i> if you're using values written in English alphabets, will usually be more performant and less "bloated".
