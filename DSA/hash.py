a hash table is a data structure that implements an associative array,
also called a dictionary or simply map

hash table also called hash map:
- A general data structure that maps keys to values using a hash function.
is a data structure that implements an associative array abstract data type,
a structure that can map keys to values.

A hash table uses a hash function to compute an index into an array of buckets or slots,
from which the desired value can be found.
If two keys produce the same index (a hash collision),
Ruby uses linked lists (SEPARATE CHAINING: schaining)
or a secondary probing mechanism to resolve them

Indexing: The hash value is used to determine the bucket in a hash table.
Collision Handling: When a collision occurs,
Ruby uses chaining (linked lists) or open addressing.

A bucket in a hash table is a storage location where key-value pairs are placed.
When a hash function generates an index, the value is placed in the corresponding bucket.

Now, consider a hash table with 4 buckets:

| Index (Bucket) | Key-Value Pairs (if multiple, collision occurs) |
|---------------|----------------------------------|
| 0             | :foo => "apple"                 |
| 1             | :bar => "banana"                |
| 2             | :baz => "cherry", :qux => "date" (collision) |
| 3             | :xyz => "elderberry"            |

Ruby internally uses a hash table (also called a hash map).
It computes a hash function on the key to determine an index in an internal array (buckets).
If two keys produce the same index (a hash collision), Ruby uses linked lists (chaining)
or a secondary probing mechanism to resolve them.

A bucket is a storage slot inside a hash table.
Buckets can hold one or more key-value pairs.
Collisions happen when multiple keys hash to the same bucket.
Ruby resolves collisions using chaining (linked lists) or open addressing.

d = {},

get using a key:
  d[key] # O(1)
  gives KeyError if key isn't in the dictionary
set a key, value:
  d[key] = value # O(1)
remove a key:
  del d[key] # O(1)
size:
  len(d) # O(1), returns the number of items in the dictionary.

### Counter
from collections import Counter

word = "occur"
counter = Counter(word)
# counter = {'o': 1, 'c': 2, 'u': 1, 'r': 1}

words = ["hello", "world"]
counter2 = Counter(word)
print(counter2)
# counter2 = {'hello': 1, 'world': 1}