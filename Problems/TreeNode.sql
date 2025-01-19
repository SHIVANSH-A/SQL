-- id is the column with unique values for this table.
-- Each row of this table contains information about the id of a node and the id of its parent node in a tree.
-- The given structure is always a valid tree.
 

-- Each node in the tree can be one of three types:

-- "Leaf": if the node is a leaf node.
-- "Root": if the node is the root of the tree.
-- "Inner": If the node is neither a leaf node nor a root node.
-- Write a solution to report the type of each node in the tree.
SELECT ID,
    CASE
        WHEN p_id is NULL THEN  'Root'
        WHEN id IN (SELECT P_ID FROM TREE) THEN 'Inner'
        ELSE 'Leaf'
    END AS type
FROM TREE;