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
