class TreeNode:
    def __init__(self, val):
        self.val = val
        self.left = None
        self.right = None


For n-nary trees:

class TreeNode:
    def __init__(self, val):
        self.val = val
        self.children = []