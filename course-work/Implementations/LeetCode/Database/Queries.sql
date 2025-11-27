select *  from [User]

INSERT INTO [User] (Username, Email, PasswordHash, Location, Birthday, Summary, Experience, Role, isPremium)
VALUES
('marko', 'marko@mail.com', 'hash', 'Bulgaria', '2002-03-10', 'C# backend developer', 'ASP.NET Core 1 year', 'Member', 0),
('tania', 'tania@mail.com', 'hash', 'Poland', '1997-07-05', 'Data analyst', 'SQL + PowerBI', 'Member', 1),
('igor', 'igor@mail.com', 'hash', 'Russia', '2001-11-12', 'C++ olympiad coder', '5 years CP', 'Member', 1),
('sergey', 'sergey@mail.com', 'hash', 'USA', '1995-01-23', 'Senior backend engineer', '10 years Java', 'Admin', 1),
('katya', 'katya@mail.com', 'hash', 'Ukraine', '2003-06-17', 'Frontend JS', 'React + Vue', 'Student', 0),
('lev', 'lev@mail.com', 'hash', 'Bulgaria', '1999-04-22', 'ML researcher', 'PyTorch + NLP', 'Member', 1),
('marin', 'marin@mail.com', 'hash', 'Serbia', '2005-09-01', 'Learning Python', 'First year', 'Student', 0),
('robin', 'robin@mail.com', 'hash', 'UK', '1994-05-08', 'Fullstack engineer', '.NET + React', 'Member', 1),
('yang', 'yang@mail.com', 'hash', 'China', '1998-12-11', 'Data scientist', '4 years ML + DL', 'Member', 1),
('maria', 'maria@mail.com', 'hash', 'Spain', '2001-10-29', 'BI specialist', 'Power BI + SQL', 'Member', 0),
('tomas', 'tomas@mail.com', 'hash', 'Germany', '2004-03-03', 'Microcontroller dev', 'Embedded C', 'Student', 0),
('lidia', 'lidia@mail.com', 'hash', 'France', '2002-05-18', 'Software tester', 'Manual & automated', 'Member', 1),
('diana', 'diana@mail.com', 'hash', 'Romania', '1996-02-14', 'AI & CV engineer', '5 years CV + ML', 'Admin', 1),
('valentin', 'valentin@mail.com', 'hash', 'Bulgaria', '2000-08-27', 'Game dev', 'Unity C#', 'Member', 0),
('stefan', 'stefan@mail.com', 'hash', 'Bulgaria', '2003-04-16', 'Backend .NET', '2 years C#', 'Member', 0);

select * from UserSkill

INSERT INTO UserSkill (UserID, SkillName)
VALUES
(6, 'C#'),
(6, 'Entity Framework'),
(7, 'Power BI'),
(7, 'SQL'),
(8, 'C++'),
(8, 'Algorithms'),
(9, 'Java'),
(9, 'Spring'),
(10, 'React'),
(10, 'Vue'),
(11, 'PyTorch'),
(11, 'Machine Learning'),
(12, 'Python'),
(13, 'React'),
(13, 'Docker'),
(14, 'Data Science'),
(14, 'SQL'),
(15, 'Embedded C'),
(1, 'Test Automation'),
(2, 'Computer Vision'),
(3, 'Unity'),
(3, 'C#'),
(4, '.NET'),
(5, 'SQL');


select * from Link

INSERT INTO Link (UserID, GitHub, LinkedIn, Google)
VALUES
(1, 'github.com/marko', NULL, NULL),
(2, 'github.com/tania', 'linkedin.com/tania', NULL),
(3, 'github.com/igor', NULL, NULL),
(4, 'github.com/sergey', 'linkedin.com/sergey', NULL),
(5, 'github.com/katya', NULL, NULL),
(6, 'github.com/lev', 'linkedin.com/lev', 'lev.ai'),
(7, 'github.com/marin', NULL, NULL),
(8, 'github.com/robin', 'linkedin.com/robin', NULL),
(9, 'github.com/yang', 'linkedin.com/yang', NULL),
(10, 'github.com/maria', NULL, NULL),
(11, 'github.com/tomas', NULL, NULL),
(12, 'github.com/lidia', 'linkedin.com/lidia', NULL),
(13, 'github.com/diana', 'linkedin.com/diana', NULL),
(14, 'github.com/valentin', NULL, NULL),
(15, 'github.com/stefan', NULL, NULL);

select * from TasksSet

INSERT INTO TasksSet (Title, Description, DifficultyLevel)
VALUES
('Basic Algorithms', 'Intro algorithmic problems', 'Easy'),
('Data Structures I', 'Stacks, queues, linked lists', 'Medium'),
('Dynamic Programming Advanced', 'DP problems for competition', 'Hard'),
('Graph Theory Basics', 'Shortest paths, BFS, DFS', 'Medium'),
('SQL Fundamentals', 'Basic SQL JOIN, GROUP BY, HAVING', 'Easy'),
('SQL Analytical Queries', 'Window functions, CTEs', 'Hard'),
('Machine Learning Starters', 'Intro ML theory and coding', 'Medium'),
('Deep Learning Hands-On', 'Neural networks for CV and NLP', 'Hard'),
('Frontend Basics', 'HTML + CSS + JS small tasks', 'Easy'),
('React Projects', 'Components, state management, routing', 'Medium'),
('Backend ASP.NET Core', 'Controllers, EF, DI, auth', 'Medium'),
('Competitive Bit Manipulation', '10110 XOR magic', 'Hard'),
('Tree and Binary Search Practice', 'Traversal and queries', 'Medium'),
('Operating Systems Basics', 'Processes, scheduling, memory', 'Hard'),
('Code Interview Selection Pack', 'Mixed high-quality challenges', 'Hard');

select * from Tag

INSERT INTO Tag (Name, Description)
VALUES
('Array', 'Problems involving arrays, indexing and iteration'),
('Two Pointers', 'Techniques using two moving pointers in linear time'),
('HashMap', 'Tasks solved with key-value structures like hash tables'),
('Dynamic Programming', 'Optimization problems with overlapping subproblems'),
('Binary Search', 'Searching technique on sorted data'),
('Graph', 'Graph representations, nodes, edges, paths'),
('DFS', 'Depth-first graph traversal'),
('BFS', 'Breadth-first graph traversal'),
('SQL', 'Database queries and relational operations'),
('Aggregation', 'SQL aggregate functions like COUNT, SUM, AVG'),
('Sorting', 'Algorithms and tasks involving ordered sequences'),
('String', 'Problems involving characters and text processing'),
('Stack', 'LIFO structure problems and parsing'),
('Greedy', 'Locally optimal choices to reach global optimum'),
('Math', 'Arithmetic, number theory, geometry'),
('Bit Manipulation', 'Problems involving bitwise operations'),
('Recursion', 'Solutions involving recursive function calls'),
('Trees', 'Binary trees, N-ary trees, traversal'),
('Heaps', 'Priority queues and heap data structures'),
('Backtracking', 'State exploration using recursion and constraints');

select * from Problem

INSERT INTO Problem
(Title, Description, Difficulty, Constraints, ExampleInput, ExampleOutput)
VALUES
('Two Sum', 'Return indices of two numbers that add up to a target', 'Easy', '1<=n<=10^5', 'nums=[2,7,11,15], target=9', '[0,1]'),
('Longest Substring No Repeats', 'Find longest substring without repeating characters', 'Medium', '1<=s<=10^5', '"abcabcbb"', '3'),
('Max Subarray', 'Kadane algorithm: maximum sum subarray', 'Medium', '1<=n<=10^5', '[-2,1,-3,4,-1,2,1,-5,4]', '6'),
('Unique Paths', 'Count number of paths in grid from top to bottom-right', 'Medium', '1<=n,m<=100', 'n=3,m=7', '28'),
('Edit Distance', 'Minimum operations to convert one string into another', 'Hard', '1<=s<=5000', 'horse -> ros', '3'),
('Longest Increasing Path', 'Longest increasing path in matrix', 'Hard', '1<=n,m<=200', '[[9,9,4],[6,6,8],[2,1,1]]', '4'),
('SQL JOIN Basics', 'Write query joining customers and orders', 'Easy', 'Basic SQL', 'Customers JOIN Orders', 'Expected result'),
('Count Students Per Course', 'Group and count enrollments', 'Easy', '', '', ''),
('Top 3 Salaries', 'Find the top 3 salaries using window functions', 'Medium', '', '', ''),
('Employees With More Salary Than Manager', 'Classic employee self-join', 'Medium', '', '', ''),
('Daily Revenue Moving Average', 'Calculate 7-day rolling average', 'Hard', '', '', ''),
('DOM Counter', 'Simulate button click counter', 'Medium', '', '3 clicks', 'Value displayed as 3'),
('Binary Tree Traversal', 'Print preorder traversal of binary tree', 'Easy', '', '', ''),
('Count Leaf Nodes', 'Count leaf nodes of a binary tree', 'Easy', '', '', ''),
('Dijkstra Shortest Path', 'Single source shortest path using min-heap', 'Hard', 'nodes<=10^5', '', ''),
('Detect Cycle in Directed Graph', 'Detect cycle using DFS', 'Medium', '', '', ''),
('Reverse Linked List', 'Reverse a singly linked list', 'Easy', '', '', ''),
('Check Balanced Tree', 'Height-balanced AVL condition', 'Medium', '', '', ''),
('Climbing Stairs', 'DP to calculate number of ways to climb stairs', 'Easy', '', 'n=5', '8'),
('Longest Palindromic Substring', 'Find the longest palindrome inside string', 'Medium', '', 'babad', 'bab');


INSERT INTO Problem
(Title, Description, Difficulty, Constraints, ExampleInput, ExampleOutput)
VALUES
('Reverse String', 'Reverse a given string', 'Easy', '1 <= len(s) <= 10^5', '""hello""', '"olleh"'),
('Check Anagram', 'Determine if two strings are anagrams', 'Easy', '1 <= len(s) <= 10^5', 's="listen", t="silent"', 'true'),
('Remove Duplicates from Array', 'Return array with duplicates removed', 'Easy', '1 <= n <= 10^5', '[1,1,2,2,3]', '[1,2,3]'),
('Sum of Even Numbers', 'Find sum of all even numbers', 'Easy', '1 <= n <= 10^5', '[1,2,3,4]', '6'),
('Count Vowels', 'Count vowels in a string', 'Easy', '1 <= len(s) <= 10^5', '"leetcode"', '4'),
('Balanced Parentheses', 'Check if parentheses string is valid', 'Easy', '1 <= len(s) <= 10^5', '"()[]{}"', 'true'),
('Longest Common Prefix', 'Find longest prefix shared by all strings', 'Easy', '1 <= n <= 200', '["flower","flow","flight"]', '"fl"'),
('Find Missing Number', 'Find missing number in 0..n array', 'Easy', '1 <= n <= 10^4', '[0,1,3]', '2'),
('Power of Two', 'Check if number is power of two', 'Easy', '1 <= n <= 10^18', '16', 'true'),
('Palindrome Number', 'Check if number is palindrome', 'Easy', '0 <= n <= 10^18', '121', 'true'),

('Longest Substring Without Repeating', 'Find length of longest substring', 'Medium', '1 <= len(s) <= 10^5', '"abcabcbb"', '3'),
('Product Except Self', 'Return array of products excluding index', 'Medium', '1 <= n <= 10^5', '[1,2,3,4]', '[24,12,8,6]'),
('Group Anagrams', 'Group anagrams together', 'Medium', '1 <= len(s) <= 10^5', '["eat","tea","tan","ate"]', '[["eat","tea","ate"],["tan"]]'),
('Rotate Matrix', 'Rotate matrix 90 degrees', 'Medium', '1 <= n <= 1000', '[[1,2],[3,4]]', '[[3,1],[4,2]]'),
('Find Peak Element', 'Peak element is greater than neighbors', 'Medium', '1 <= n <= 10^5', '[1,2,1,3,5,6,4]', '5'),
('Insert Interval', 'Insert interval into list of intervals', 'Medium', '1 <= n <= 10^4', '[[1,3],[6,9]], [2,5]', '[[1,5],[6,9]]'),
('Minimum Window Substring', 'Find minimum substring covering target', 'Medium', '1 <= len(s), len(t) <= 10^5', 's="ADOBECODEBANC", t="ABC"', '"BANC"'),
('Subsets', 'Return all subsets of nums', 'Medium', '1 <= n <= 15', '[1,2,3]', '[[1],[2],[3],[1,2],[1,3],[2,3],[1,2,3]]'),
('Decode String', 'Decode repetition-based encoded string', 'Medium', '1 <= len(s) <= 10^5', '"3[a2[c]]"', '"accaccacc"'),
('Maximum Level Sum Tree', 'Return level with max sum in tree', 'Medium', 'binary tree size <= 10^5', '[1,7,0,7,-8,null,null]', '2'),

('Longest Increasing Subsequence', 'Return LIS length', 'Medium', '1 <= n <= 10^5', '[10,9,2,5,3,7,101,18]', '4'),
('Zigzag String Conversion', 'Convert string to zigzag pattern', 'Medium', '1 <= len(s) <= 10^5', '"PAYPALISHIRING", rows=3', '"PAHNAPLSIIGYIR"'),
('Binary Search Tree Iterator', 'Design BST iterator', 'Medium', 'tree size <= 10^5', '[7,3,15,null,null,9,20]', '[3,7,9,15,20]'),
('Course Schedule', 'Determine if all courses can be finished', 'Medium', '1 <= n <= 10^5', 'num=2, prereq=[[1,0]]', 'true'),
('Evaluate RPN', 'Evaluate reverse polish notation', 'Medium', '1 <= tokens <= 10^5', '["2","1","+","3","*"]', '9'),
('Sort Characters By Frequency', 'Sort chars by frequency', 'Medium', '1 <= len(s) <= 10^5', '"tree"', '"eetr"'),
('Rotate Array', 'Rotate array by k', 'Medium', '1 <= n <= 10^5', '[1,2,3,4,5,6,7], k=3', '[5,6,7,1,2,3,4]'),
('Top K Frequent Elements', 'Return K most frequent nums', 'Medium', '1 <= n <= 10^5', '[1,1,1,2,2,3], k=2', '[1,2]'),
('Coin Change', 'Minimum coins to make amount', 'Medium', '1 <= amount <= 10^4', 'coins=[1,2,5], amount=11', '3'),
('Number of Islands', 'Count connected islands', 'Medium', 'n,m <= 1000', 'grid=...', '3'),

('Wildcard Matching', 'String matching with ? and *', 'Hard', '1 <= len(s) <= 10^5', 's="aa", p="a"', 'false'),
('Median of Data Stream', 'Insert numbers and get median', 'Hard', '1 <= operations <= 10^5', '[1,2]', '1.5'),
('LFU Cache', 'Design LFU cache', 'Hard', 'capacity <= 10^5', 'put/get operations', 'various'),
('Sudoku Solver', 'Solve sudoku board', 'Hard', 'board is 9x9', 'grid', 'completed grid'),
('N-Queens', 'Solve N-Queens', 'Hard', '1 <= n <= 20', '4', '[[1,3,0,2]...]'),
('Largest Rectangle in Histogram', 'Largest rectangle area', 'Hard', '1 <= n <= 10^5', '[2,1,5,6,2,3]', '10'),
('Max Path Sum in Tree', 'Max sum root-to-leaf path', 'Hard', 'tree <= 10^5', '[-10,9,20,null,null,15,7]', '42'),
('Regex Matching', 'Implement regex with . and *', 'Hard', '1 <= len(s),len(p) <= 10^5', 's="aab", p="c*a*b"', 'true'),
('Trapping Rain Water', 'Compute trapped water', 'Hard', '1 <= n <= 10^5', '[0,1,0,2,1,0,1,3,2,1,2,1]', '6'),
('Minimum Cost to Cut Stick', 'Find min cost cuts', 'Hard', 'n<=10^6', 'n=7,cuts=[1,3,4,5]', '16'),

('Word Ladder', 'Shortest transformation path', 'Hard', '1 <= n <= 10^5', 'begin="hit", end="cog"', '5'),
('Max Profit With K Transactions', 'Return max stock profit', 'Hard', '1 <= k <= 10^5', '[3,2,6,5,0,3], k=2', '7'),
('Kth Smallest in Matrix', 'Matrix rows & cols sorted', 'Hard', 'n<=500', '[[1,5,9],[10,11,13],[12,13,15]], k=8', '13'),
('Skyline Problem', 'Return building skyline', 'Hard', 'buildings<=10^5', 'buildings=...', 'skyline'),
('Shortest Palindrome', 'Make string palindrome', 'Hard', '1 <= len(s) <= 10^5', '"aacecaaa"', '"aaacecaaa"'),
('Alien Dictionary', 'Determine alien language order', 'Hard', 'words<=10^5', '["wrt","wrf","er","ett","rftt"]', '"wertf"'),
('Split Array Largest Sum', 'Split into k parts minimizing max sum', 'Hard', '1 <= n <= 10^5', '[7,2,5,10,8], k=2', '18'),
('Min Cost to Merge Stones', 'DP on merging stones', 'Hard', 'n<=1000', '[3,2,4,1]', '20'),
('Maximal Rectangle', 'Largest rectangle of 1s in matrix', 'Hard', 'n,m<=1000', 'matrix=...', '6'),
('Shortest Path in Grid With Obstacles', 'Find shortest path with eliminations', 'Hard', 'n,m<=1000', 'grid,k', 'integer');


select * from ProblemTag 
INSERT INTO ProblemTag (ProblemID, TagID) VALUES
-- 1. Two Sum
(1, 1), (1, 3),

-- 2. Longest Substring Without Repeats
(2, 12), (2, 3),

-- 3. Max Subarray (Kadane)
(3, 4), (3, 1),

-- 4. Unique Paths
(4, 4), (4, 15),

-- 5. Edit Distance
(5, 4), (5, 12), (5, 17),

-- 6. Longest Increasing Path (matrix)
(6, 4), (6, 6), (6, 7),

-- 7. SQL JOIN Basics
(7, 9),

-- 8. Count Students Per Course
(8, 9), (8, 10),

-- 9. Top 3 Salaries
(9, 9), (9, 10),

-- 10. Employees With More Salary Than Manager
(10, 9),

-- 11. Daily Revenue Moving Average
(11, 9), (11, 10),

-- 12. DOM Counter
(12, 12),

-- 13. Binary Tree Traversal
(13, 18), (13, 17),

-- 14. Count Leaf Nodes
(14, 18),

-- 15. Dijkstra
(15, 6), (15, 19),

-- 16. Detect Cycle in Directed Graph
(16, 6), (16, 7),

-- 17. Reverse Linked List
(17, 17),

-- 18. Check Balanced Tree
(18, 18), (18, 17),

-- 19. Climbing Stairs
(19, 4), (19, 15),

-- 20. Longest Palindromic Substring
(20, 12), (20, 17), (20, 20);

INSERT INTO ProblemTag (ProblemID, TagID) VALUES


(21, 2), (21, 7), (21, 10),
(22, 1), (22, 3), (22, 8),
(23, 4), (23, 5),
(24, 2), (24, 9), (24, 6),
(25, 3), (25, 7),
(26, 1), (26, 8), (26, 10),
(27, 4), (27, 6), (27, 9),
(28, 2), (28, 5),
(29, 3), (29, 8), (29, 7),
(30, 1), (30, 9),

(31, 2), (31, 6), (31, 10),
(32, 4), (32, 7),
(33, 1), (33, 3), (33, 8),
(34, 5), (34, 9),
(35, 2), (35, 10), (35, 6),
(36, 3), (36, 7),
(37, 1), (37, 4), (37, 8),
(38, 5), (38, 9), (38, 10),
(39, 2), (39, 6),
(40, 3), (40, 7), (40, 1),

(41, 4), (41, 9),
(42, 5), (42, 8), (42, 2),
(43, 1), (43, 6),
(44, 3), (44, 7), (44, 10),
(45, 2), (45, 8),
(46, 4), (46, 9), (46, 6),
(47, 1), (47, 3),
(48, 5), (48, 7), (48, 10),
(49, 2), (49, 4), (49, 8),
(50, 1), (50, 6), (50, 9);


use LeetCodeDb

select * from ProgrammingLanguage

INSERT INTO ProgrammingLanguage (Name, Version)
VALUES
('C#', 12.0),
('Java', 21.0),
('C++', 20.0),
('Python', 3.12),
('JavaScript', 2023),
('TypeScript', 5.2),
('Go', 1.21),
('Rust', 1.77),
('Kotlin', 1.9),
('PHP', 8.2),
('Ruby', 3.2),
('Swift', 5.9),
('SQL', 2019);


select * from Submission

INSERT INTO Submission
(UserID, ProblemID, LanguageID, Code, Result, Runtime, MemoryUsage, IsAccepted, SubmittedAt)
VALUES
(1, 1, 1, 'code...', 'Accepted', 24.2, 3.7, 1, '2025-03-01 10:22'),
(1, 1, 1, 'code...', 'Wrong Answer', 25.1, 3.6, 0, '2025-03-01 10:18'),
(2, 1, 2, 'code...', 'Accepted', 18.4, 2.9, 1, '2025-03-01 11:12'),
(2, 2, 3, 'code...', 'Time Limit', 1000, 6.3, 0, '2025-03-02 09:30'),
(3, 2, 3, 'code...', 'Accepted', 29.0, 4.4, 1, '2025-03-02 10:10'),
(3, 3, 1, 'code...', 'Runtime Error', 0, 0, 0, '2025-03-02 10:22'),
(4, 4, 1, 'code...', 'Accepted', 11.3, 2.7, 1, '2025-03-03 15:22'),
(4, 4, 1, 'code...', 'Wrong Answer', 10.1, 2.5, 0, '2025-03-03 15:06'),
(5, 5, 2, 'code...', 'Accepted', 50.2, 7.1, 1, '2025-03-04 18:00'),
(5, 6, 2, 'code...', 'Accepted', 122.2, 15.1, 1, '2025-03-05 14:52'),
(6, 7, 1, 'code...', 'Accepted', 5.2, 1.1, 1, '2025-03-05 14:55'),
(7, 7, 2, 'code...', 'Wrong Answer', 9.2, 1.4, 0, '2025-03-06 10:02'),
(7, 8, 3, 'code...', 'Accepted', 4.1, 1.2, 1, '2025-03-06 10:20'),
(8, 9, 2, 'code...', 'Accepted', 34.0, 5.3, 1, '2025-03-07 12:01'),
(8, 9, 2, 'code...', 'Wrong Answer', 31.0, 5.0, 0, '2025-03-07 11:44'),
(9, 10, 1, 'code...', 'Accepted', 45.3, 6.1, 1, '2025-03-07 18:50'),
(10, 11, 3, 'code...', 'Accepted', 14.0, 1.9, 1, '2025-03-08 09:11'),
(11, 11, 3, 'code...', 'Wrong Answer', 14.5, 2.1, 0, '2025-03-08 08:50'),
(12, 12, 1, 'code...', 'Accepted', 2.2, 0.3, 1, '2025-03-09 10:01'),
(13, 13, 1, 'code...', 'Time Limit', 1000, 10.1, 0, '2025-03-10 09:22'),
(13, 13, 1, 'code...', 'Accepted', 88.2, 9.1, 1, '2025-03-10 10:04'),
(14, 14, 3, 'code...', 'Accepted', 20.4, 3.8, 1, '2025-03-10 13:40'),
(15, 15, 2, 'code...', 'Wrong Answer', 27.2, 2.0, 0, '2025-03-10 13:33'),
(15, 15, 2, 'code...', 'Accepted', 22.1, 1.7, 1, '2025-03-10 14:10'),
(6, 16, 1, 'code...', 'Accepted', 60.2, 7.8, 1, '2025-03-11 12:00'),
(7, 17, 1, 'code...', 'Accepted', 2.8, 0.9, 1, '2025-03-12 18:11'),
(8, 18, 3, 'code...', 'Runtime Error', 0, 0, 0, '2025-03-12 18:00'),
(9, 19, 1, 'code...', 'Accepted', 81.3, 6.2, 1, '2025-03-13 07:45'),
(10, 20, 3, 'code...', 'Accepted', 41.0, 5.1, 1, '2025-03-13 11:02');

use LeetCodeDb

INSERT INTO Submission (UserID, ProblemID, LanguageID, Code, Result, Runtime, MemoryUsage, IsAccepted, SubmittedAt) VALUES
(1, 3, 4, 'code...', 'Accepted', 0.42, 12.5, 1, '2024-01-05 12:20'),
(2, 7, 2, 'code...', 'Wrong Answer', 1.60, 20.1, 0, '2024-01-09 15:44'),
(3, 12, 11, 'code...', 'Accepted', 0.35, 9.7, 1, '2024-01-14 18:10'),
(4, 5, 6, 'code...', 'Runtime Error', 0.00, 0.0, 0, '2024-01-18 21:33'),
(5, 9, 8, 'code...', 'Accepted', 0.55, 10.9, 1, '2024-01-21 10:05'),
(6, 1, 13, 'code...', 'Wrong Answer', 1.32, 22.2, 0, '2024-01-23 09:51'),
(7, 10, 9, 'code...', 'Accepted', 0.28, 7.3, 1, '2024-01-27 14:16'),
(8, 2, 4, 'code...', 'Time Limit', 3.11, 33.4, 0, '2024-01-29 19:41'),
(9, 6, 1, 'code...', 'Accepted', 0.61, 15.0, 1, '2024-02-02 13:07'),
(10, 4, 7, 'code...', 'Accepted', 0.39, 11.1, 1, '2024-02-03 16:13'),
(11, 8, 3, 'code...', 'Wrong Answer', 1.50, 21.2, 0, '2024-02-05 09:55'),
(12, 11, 5, 'code...', 'Accepted', 0.52, 14.3, 1, '2024-02-07 20:22'),
(13, 15, 6, 'code...', 'Runtime Error', 0.00, 0.0, 0, '2024-02-10 17:40'),
(14, 19, 12, 'code...', 'Accepted', 0.48, 9.9, 1, '2024-02-12 08:30'),
(15, 14, 10, 'code...', 'Wrong Answer', 1.73, 25.6, 0, '2024-02-13 22:10'),
(3, 17, 11, 'code...', 'Accepted', 0.44, 13.2, 1, '2024-02-16 11:51'),
(5, 4, 9, 'code...', 'Time Limit', 3.00, 30.9, 0, '2024-02-18 15:03'),
(7, 3, 2, 'code...', 'Accepted', 0.36, 11.4, 1, '2024-02-19 19:14'),
(9, 18, 5, 'code...', 'Wrong Answer', 1.22, 19.2, 0, '2024-02-20 21:07'),
(11, 7, 1, 'code...', 'Accepted', 0.41, 10.8, 1, '2024-02-22 16:18'),
(1, 13, 13, 'code...', 'Runtime Error', 0.00, 0.0, 0, '2024-02-25 08:44'),
(2, 9, 7, 'code...', 'Accepted', 0.33, 8.4, 1, '2024-02-27 14:09'),
(4, 6, 3, 'code...', 'Time Limit', 2.88, 31.2, 0, '2024-03-01 09:33'),
(6, 11, 8, 'code...', 'Accepted', 0.49, 12.3, 1, '2024-03-03 12:58'),
(8, 5, 4, 'code...', 'Wrong Answer', 1.39, 18.8, 0, '2024-03-05 21:10'),
(10, 2, 6, 'code...', 'Accepted', 0.57, 15.4, 1, '2024-03-06 11:20'),
(12, 16, 9, 'code...', 'Runtime Error', 0.00, 0.0, 0, '2024-03-07 18:22'),
(14, 20, 11, 'code...', 'Accepted', 0.29, 7.0, 1, '2024-03-09 23:44'),
(15, 6, 10, 'code...', 'Wrong Answer', 1.68, 20.9, 0, '2024-03-10 14:55'),
(3, 8, 1, 'code...', 'Accepted', 0.31, 9.6, 1, '2024-03-12 19:08'),
(5, 10, 2, 'code...', 'Accepted', 0.60, 14.9, 1, '2024-03-14 10:33'),
(7, 11, 5, 'code...', 'Wrong Answer', 1.77, 24.7, 0, '2024-03-16 17:04'),
(9, 14, 7, 'code...', 'Accepted', 0.40, 11.5, 1, '2024-03-18 08:21'),
(11, 1, 12, 'code...', 'Time Limit', 3.11, 34.0, 0, '2024-03-19 15:11'),
(13, 3, 4, 'code...', 'Accepted', 0.27, 6.9, 1, '2024-03-21 22:30'),
(15, 9, 8, 'code...', 'Accepted', 0.53, 13.6, 1, '2024-03-22 14:45'),
(2, 12, 11, 'code...', 'Wrong Answer', 1.48, 21.7, 0, '2024-03-23 10:22'),
(4, 18, 13, 'code...', 'Accepted', 0.38, 10.0, 1, '2024-03-24 18:34'),
(6, 7, 3, 'code...', 'Runtime Error', 0.00, 0.0, 0, '2024-03-26 09:18'),
(8, 4, 6, 'code...', 'Accepted', 0.41, 11.9, 1, '2024-03-27 16:12'),
(10, 15, 10, 'code...', 'Wrong Answer', 1.33, 22.8, 0, '2024-03-28 13:52'),
(12, 20, 2, 'code...', 'Accepted', 0.45, 12.7, 1, '2024-03-29 19:44'),
(14, 16, 5, 'code...', 'Wrong Answer', 1.62, 20.4, 0, '2024-03-30 17:20'),
(1, 17, 9, 'code...', 'Accepted', 0.34, 8.8, 1, '2024-04-01 11:45'),
(3, 14, 7, 'code...', 'Wrong Answer', 1.52, 26.1, 0, '2024-04-03 21:17'),
(5, 13, 1, 'code...', 'Accepted', 0.40, 11.0, 1, '2024-04-05 10:10'),
(7, 8, 3, 'code...', 'Time Limit', 2.81, 32.4, 0, '2024-04-06 22:59'),
(9, 4, 12, 'code...', 'Accepted', 0.50, 13.9, 1, '2024-04-08 19:41'),
(11, 11, 5, 'code...', 'Accepted', 0.37, 10.5, 1, '2024-04-10 14:23'),
(13, 6, 8, 'code...', 'Wrong Answer', 1.94, 24.9, 0, '2024-04-11 07:55'),
(15, 5, 9, 'code...', 'Accepted', 0.56, 15.8, 1, '2024-04-13 20:14'),
(2, 2, 4, 'code...', 'Runtime Error', 0.00, 0.0, 0, '2024-04-14 17:22'),
(4, 7, 6, 'code...', 'Accepted', 0.48, 10.9, 1, '2024-04-16 22:31'),
(6, 12, 10, 'code...', 'Wrong Answer', 1.41, 19.8, 0, '2024-04-18 15:12'),
(8, 15, 11, 'code...', 'Accepted', 0.31, 9.1, 1, '2024-04-20 11:29'),
(10, 18, 13, 'code...', 'Accepted', 0.44, 12.4, 1, '2024-04-21 10:58'),
(12, 20, 7, 'code...', 'Wrong Answer', 1.83, 23.3, 0, '2024-04-23 13:11'),
(14, 9, 3, 'code...', 'Accepted', 0.60, 17.2, 1, '2024-04-25 16:44'),
(1, 1, 2, 'code...', 'Accepted', 0.36, 9.7, 1, '2024-04-27 18:12'),
(3, 4, 5, 'code...', 'Wrong Answer', 1.11, 18.8, 0, '2024-04-29 20:22'),
(5, 6, 1, 'code...', 'Accepted', 0.29, 8.3, 1, '2024-05-01 09:33'),
(7, 10, 9, 'code...', 'Accepted', 0.38, 11.6, 1, '2024-05-02 14:00'),
(9, 11, 13, 'code...', 'Time Limit', 3.00, 33.1, 0, '2024-05-04 19:55'),
(11, 2, 7, 'code...', 'Accepted', 0.57, 15.0, 1, '2024-05-06 17:20'),
(13, 5, 3, 'code...', 'Wrong Answer', 1.44, 21.6, 0, '2024-05-07 20:33'),
(15, 12, 6, 'code...', 'Accepted', 0.49, 13.1, 1, '2024-05-09 23:40'),
(2, 16, 8, 'code...', 'Accepted', 0.35, 10.1, 1, '2024-05-11 12:28'),
(4, 7, 11, 'code...', 'Wrong Answer', 1.77, 26.9, 0, '2024-05-13 19:42'),
(6, 3, 9, 'code...', 'Accepted', 0.40, 12.2, 1, '2024-05-15 21:19'),
(8, 14, 1, 'code...', 'Accepted', 0.51, 14.4, 1, '2024-05-17 18:10'),
(10, 9, 5, 'code...', 'Wrong Answer', 1.60, 23.5, 0, '2024-05-19 22:11'),
(12, 1, 6, 'code...', 'Accepted', 0.46, 12.0, 1, '2024-05-21 09:56');


select * from Discussion

INSERT INTO Discussion
(ProblemID, AuthorID, Message, PostedAt, RepliesCount)
VALUES
(1, 3, 'I solved this using a hash map in O(n).', '2025-03-02 09:00', 0),
(1, 4, 'Two pointers also works but needs sorting.', '2025-03-02 10:25', 4),
(2, 7, 'Sliding window helped a lot.', '2025-03-03 14:50', 0),
(3, 2, 'Kadane is the cleanest solution.', '2025-03-04 10:22', 1),
(4, 5, 'Nice DP problem!', '2025-03-05 18:22', 0),
(5, 8, 'Took me 2 hours but finally got it.', '2025-03-06 20:18', 2),
(7, 10, 'SQL JOINs are not that scary.', '2025-03-07 08:10', 11),
(9, 11, 'Window functions are fun.', '2025-03-07 15:42', 5),
(10, 6, 'Good classical question.', '2025-03-08 17:25', 0),
(13, 12, 'Dijkstra + priority queue works great.', '2025-03-09 21:04', 0);

select * from [Notification]

INSERT INTO [Notification]
(UserID, Type, Message, IsRead, CreatedAt)
VALUES
(1, 'New Submission', 'Your submission for Two Sum was Accepted', 1, '2025-03-01 10:22'),
(1, 'New Submission', 'Your solution to Two Sum got Wrong Answer', 1, '2025-03-01 10:18'),
(3, 'Discussion Reply', 'Someone replied to your comment on Max Subarray', 0, '2025-03-02 11:20'),
(5, 'New Badge', 'You solved 10 problems! Congrats!', 1, '2025-03-04 20:00'),
(7, 'New Submission', 'Your SQL problem solution was Accepted', 1, '2025-03-06 10:20'),
(11, 'Discussion Reply', 'You have 1 new reply in Daily Revenue discussion', 0, '2025-03-07 15:50'),
(12, 'New Submission', 'Your solution passed all tests!', 1, '2025-03-09 10:02'),
(15, 'New Submission', 'Accepted after 2 previous attempts', 1, '2025-03-10 14:10');

select * from ProblemTasksSet

INSERT INTO ProblemTasksSet (ProblemID, SetID) VALUES
-- Set 1: Basic Algorithms
(1,1),(2,1),(3,1),(4,1),(20,1),

-- Set 2: Data Structures I
(17,2),(3,2),(12,2),

-- Set 3: Dynamic Programming Advanced
(5,3),(19,3),(6,3),

-- Set 4: Graph Theory Basics
(15,4),(16,4),(6,4),

-- Set 5: SQL Fundamentals
(7,5),(8,5),(10,5),

-- Set 6: SQL Analytical Queries
(9,6),(11,6),

-- Set 7: Machine Learning Starters
(12,7),

-- Set 8: Deep Learning Hands-On
(12,8),

-- Set 9: Frontend Basics
(12,9),

-- Set 10: React Projects
(12,10),

-- Set 11: Backend ASP.NET Core
(10,11),

-- Set 12: Bit Manipulation Competitive
(3,12),

-- Set 13: Tree + Binary Search Practice
(13,13),(14,13),(18,13),

-- Set 14: Operating Systems
(12,14),

-- Set 15: Code Interview Selection Pack
(1,15),(2,15),(3,15),(4,15),(5,15),(20,15);
 
 use LeetCodeDb

 select * from UserTasksSet
 INSERT INTO UserTasksSet (UserID, SetID) VALUES
(1,1),(1,5),(1,9),
(2,1),(2,3),(2,13),
(3,2),(3,4),(3,6),
(4,5),(4,6),
(5,3),(5,15),
(6,4),(6,13),
(7,5),(7,10),
(8,9),(8,10),
(9,11),(9,15),
(10,12),
(11,13),
(12,7),(12,8);

INSERT INTO UserTasksSet (UserID, SetID) VALUES
(13, 1), (13, 4), (13, 6), (13, 10),
(14, 3), (14, 5), (14, 7),
(15, 2), (15, 8), (15, 9), (15, 10);


select * from TestCase
INSERT INTO TestCase (ProblemID, InputData, ExpectedOutput) VALUES
-- 1. Two Sum
(1, 'nums=[2,7,11,15], target=9', '[0,1]'),
(1, 'nums=[3,2,4], target=6', '[1,2]'),
(1, 'nums=[3,3], target=6', '[0,1]'),
(1, 'nums=[1,5,3,7], target=8', '[0,3]'),
(1, 'nums=[10,20,30], target=50', '[1,2]'),

-- 2. Longest Substring No Repeats
(2, '"abcabcbb"', '3'),
(2, '"bbbbb"', '1'),
(2, '"pwwkew"', '3'),
(2, '"", empty', '0'),
(2, '"abcdef"', '6'),

-- 3. Max Subarray (Kadane)
(3, '[-2,1,-3,4,-1,2,1,-5,4]', '6'),
(3, '[1]', '1'),
(3, '[5,4,-1,7,8]', '23'),
(3, '[-1,-2,-3]', '-1'),
(3, '[0,0,0]', '0'),

-- 4. Unique Paths
(4, 'm=3,n=7', '28'),
(4, 'm=3,n=2', '3'),
(4, 'm=1,n=10', '1'),
(4, 'm=10,n=1', '1'),
(4, 'm=5,n=5', '70'),

-- 5. Edit Distance
(5, 'horse -> ros', '3'),
(5, 'intention -> execution', '5'),
(5, 'abc -> abc', '0'),
(5, 'kitten -> sitting', '3'),
(5, 'flaw -> lawn', '2'),

-- 6. Longest Increasing Path in Matrix
(6, '[[9,9,4],[6,6,8],[2,1,1]]', '4'),
(6, '[[1]]', '1'),
(6, '[[3,4,5],[3,2,6],[2,2,1]]', '4'),
(6, '[[7,8],[9,10]]', '4'),
(6, '[[1,2],[4,3]]', '3'),

-- 7. SQL JOIN Basics
(7, 'Customers + Orders', 'JOIN Result'),
(7, 'Employees + Departments', 'JOIN Result'),
(7, 'A LEFT JOIN B', 'Valid'),
(7, 'A RIGHT JOIN B', 'Valid'),
(7, 'A INNER JOIN B', 'Valid'),

-- 8. Count Students Per Course
(8, 'Course enrollments sample 1', 'Counts'),
(8, 'Course enrollments sample 2', 'Counts'),
(8, '2 courses, 5 students', 'Counts'),
(8, 'Empty dataset', '0'),
(8, 'Random grouping test', 'Counts'),

-- 9. Top 3 Salaries
(9, 'Emp salaries 1', 'Top3'),
(9, 'Emp salaries 2', 'Top3'),
(9, 'Emp salaries small', 'TopN'),
(9, 'Only 2 employees', '2 results'),
(9, 'Duplicate salaries', 'Top3'),

-- 10. Employees With More Salary Than Manager
(10, 'Dataset 1', 'Matches'),
(10, 'Dataset 2', 'Matches'),
(10, 'No managers', 'Empty'),
(10, 'Equal salary case', 'Empty'),
(10, 'Nested managers', 'Matches'),

-- 11. Daily Revenue Moving Average
(11, '7-day data', 'Computed'),
(11, '14-day data', 'Computed'),
(11, '30-day data', 'Computed'),
(11, 'Sparse data', 'Computed'),
(11, 'Single day', 'Same value'),

-- 12. DOM Counter
(12, 'clicks=3', '3'),
(12, 'clicks=10', '10'),
(12, 'clicks=0', '0'),
(12, 'clicks=1', '1'),
(12, 'clicks=123', '123'),

-- 13. Binary Tree Traversal
(13, '[1,2,3]', '[1,2,3]'),
(13, '[1,null,2,3]', '[1,2,3]'),
(13, '[5,3,7,2,4]', '[5,3,2,4,7]'),
(13, '[]', '[]'),
(13, '[1]', '[1]'),

-- 14. Count Leaf Nodes
(14, '[1,2,3]', '2'),
(14, '[1]', '1'),
(14, '[1,2,null,3]', '1'),
(14, '[1,null,2,null,3]', '1'),
(14, '[5,3,7,1,4,6,8]', '4'),

-- 15. Dijkstra Shortest Path
(15, 'Graph A', 'distances'),
(15, 'Graph B', 'distances'),
(15, 'Single node', '0'),
(15, 'Disconnected graph', 'INF'),
(15, 'Chain graph', 'Sequential distances'),

-- 16. Detect Cycle in Directed Graph
(16, '1->2->3->1', 'cycle'),
(16, '1->2->3', 'no cycle'),
(16, 'Self-loop', 'cycle'),
(16, 'Two components', 'varies'),
(16, 'Long chain no cycle', 'no cycle'),

-- 17. Reverse Linked List
(17, '[1,2,3,4,5]', '[5,4,3,2,1]'),
(17, '[1]', '[1]'),
(17, '[1,2]', '[2,1]'),
(17, '[0,1,2]', '[2,1,0]'),
(17, '[]', '[]'),

-- 18. Check Balanced Tree
(18, '[3,9,20,null,null,15,7]', 'true'),
(18, '[1,2,2,3,3,null,null,4,4]', 'false'),
(18, '[1]', 'true'),
(18, '[]', 'true'),
(18, '[1,2,2,3,null,null,null,4]', 'false'),

-- 19. Climbing Stairs
(19, 'n=5', '8'),
(19, 'n=2', '2'),
(19, 'n=1', '1'),
(19, 'n=10', '89'),
(19, 'n=3', '3'),

-- 20. Longest Palindromic Substring
(20, '"babad"', '"bab"'),
(20, '"cbbd"', '"bb"'),
(20, '"a"', '"a"'),
(20, '"aaaa"', '"aaaa"'),
(20, '"racecar"', '"racecar"');



