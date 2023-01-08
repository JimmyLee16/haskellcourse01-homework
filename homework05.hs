-- Create a higher-order function that takes 3 parameters: A function and the two parameters that that function takes, and
-- flips the order of the parameters.
-- For example this: `(/) 6 2` returns `3`. But this: `flip' (/) 6 2` returns `0.3333333333`
f1' :: (a->b->c)->b->a->c
f1' f1 x y  = f1 y x

-- Create the `uncurry'` function that converts a curried function to a function on pairs. So this: `(+) 1 2` that returns `3` can be written as
-- `uncurry' (+) (1,2)` (with the two different arguments inside a pair)
f2' :: (a->b->c)->(a,b)->c
f2' f2 (x, y) = f2 x y

-- Create the `curry'` function that converts an uncurried function to a curried function. So this: `fst (1,2)` that returns `1` can be written as
-- `curry' fst 1 2` (with the tuple converted into two different arguments).
f3' :: ((a,b)->c)->a->b->c
f3' f3 x y = f3 (x, y)

-- Use higher-order functions, partial application, and point-free style to create a function that checks if a word has an uppercase letter.
-- Start with using just higher-order functions and build from there. 

{-case1: higher-order function-}
f4 :: String->Bool
f4 x = any (\y -> y `elem` ['A'..'Z']) x

{-case2: partial application-}
f4' :: String -> Bool
f4' x = any (`elem` ['A'..'Z']) x

{-case3: point free style-}
f4'' :: String->Bool
f4'' = any (`elem`['A'..'Z'])

-- Create the `count` function that takes a team ("Red", "Blue", or "Green") and returns the amount of votes the team has inside `votes`.

votes :: [String]
votes = ["Red", "Blue", "Green", "Blue", "Blue", "Red"]

count x = length ((filter (==x)) votes)

count':: String->Int
count' x = length $ filter (==x) votes

-- Create a one-line function that filters `cars` by brand and then checks if there are any left.

cars :: [(String,Int)]
cars = [("Toyota",0), ("Nissan",3), ("Ford",1)]

f6 :: String -> Bool
f6 x = any (\(y,z) -> y == x && z > 0) cars
