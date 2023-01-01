-- Question 1
-- Lets say you have the nested values defined bellow. How would you get the value of
-- 4 by using only pattern matching in a function?
f1 :: [([Int], [Int])] -> [Char]
{-f1 = [([1,2],[3,4]), ([5,6],[7,8])]-}
f1 [(_,[_,x]),(_,_)] = "result = " ++ show x
f1 _ = "re-input"
-- Question 2
-- Write a function that takes a list of elements of any type and, if the list has 3 or more elements, it
-- removes them. Else, it does nothing. Do it two times, one with multiple function definitions and one with
-- case expressions.
f2 :: [a] -> [a]
f2 ( _ : _ : _ : x) = x
f2 y = y
{-case of-}
f2' :: [a] ->[a]
f2' x = case x of
 (_:_:_:x) -> x
 y -> y
 -- Question 3
-- Create a function that takes a 3-element tuple (all of type Integer) and adds them together
f3 :: (Int,Int,Int) -> Int
f3 (a,b,c) = a+b+c
-- Question 4
-- Implement a function that returns True if a list is empty and False otherwise.
f4 :: [a] -> Bool
f4 [] = True
f4 _ = False
-- Question 5
-- Write the implementation of the tail function using pattern matching. But, instead of failing if
-- the list is empty, return an empty list.
f5 :: [a] -> [a]
f5 [] = []
f5 (_:x) = x
-- Question 6
-- write a case expression wrapped in a function that takes an Int and adds one if it's even. Otherwise does nothing. 
-- (Use the `even` function to check if the number is even.)
f6 :: Int-> String
f6 x = case even x of
 True -> show(x + 1)
 False -> "do nothing"
