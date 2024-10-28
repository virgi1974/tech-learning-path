# TWO POINTER TECHNIQUE
nums are sorted.
we need to track the last unique element (starting from the first element wich is unique).
We just need to move to the next element if the current element is the same as the previous element.
But if the current element is different from the previous element, we need:
- update the index of the last unique element (+1)
- update the value at that position(last unique element ) with the current element.

Time Complexity:
O(n) -> we mat loop several times but O(n) + O(n) = O(n)
Space Complexity:
O(1) -> modification in-place

Explanation of the Two-Pointer Technique:
Two Pointers: This approach involves using two indices (pointers) to traverse the array. In this specific problem, the two pointers are referred to as uniqueIndex and currentIndex.

uniqueIndex: This pointer is used to track the position of the last unique element found in the array.
currentIndex: This pointer is used to traverse the entire array and identify new unique elements.
In-Place Modification: The array is modified in-place, meaning no additional space proportional to the size of the input is used. This keeps the space complexity to

Maintaining Order: The order of unique elements is preserved, which is important for certain applications.

Steps Involved:
Initialization: Start by initializing both pointers at the beginning of the array.
Traversal: Use the currentIndex to traverse the array. For each element, compare it with the element at uniqueIndex.
Update: If a new unique element is found (nums[currentIndex] != nums[uniqueIndex]), increment uniqueIndex and update nums[uniqueIndex] with the new unique element.
Post-Processing: After the traversal, fill the remaining positions in the array with a placeholder (e.g., "_").
This approach ensures that the algorithm runs in linear time (
O(n)) with constant space complexity
O(1) making it efficient and scalable.

Applications
The two-pointer technique is widely used in various array and string problems, such as:

- Removing duplicates from sorted arrays.
- Partitioning arrays.
- Finding pairs or triplets that satisfy certain conditions (e.g., two-sum, three-sum problems).
- Merging two sorted arrays.
- Solving problems involving subarrays or subsequences.
- This technique is highly versatile and forms the basis for many optimized solutions in competitive programming and coding interviews.
