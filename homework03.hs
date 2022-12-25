-- Question 1
-- Write a function that checks if the monthly consumption of an electrical device is bigger, equal, or smaller than the maximum allowed and
-- returns a message accordingly. 
-- The function has to take the hourly consumption of an electrical device, the hours of daily use, and the maximum monthly consumption allowed.
-- (Monthly usage = consumption (kW) * hours of daily use (h) * 30 days).
{-case 1: if then else-}
monthlyuse :: Float->Float->Float->[Char]
{-maxconsum = y-}
monthlyuse kW h y =  
 if kW * h * 30 > y
  then "bigger"
  else
   if kW * h * 30 == y
    then "bigger"
    else "smaller"
{-case 2: guard & where-}
monthlyuse' :: Float->Float->Float->[Char]
monthlyuse' kw h y 
  | f1 > y = "bigger" 
  | f1 < y = "smaller" 
  | otherwise = "equal"
 where f1 = kw * h * 30
-- Question 2
-- Prelude:
-- We use the function `show :: a -> String` to transform any type into a String.
-- So `show 3` will produce `"3"` and `show (3 > 2)` will produce `"True"`.

-- In the previous function, return the excess/savings of consumption as part of the message.
monthlyuse1 :: Float->Float->Float->String
monthlyuse1 kw h y 
  | f1 > y = "monthlyuse: " ++ show(f1) ++ " and maxconsume: " ++ show(y) ++ " your excess: " ++ show(f1-y) ++ "!!! please save"
  | f1 < y = "monthlyuse :" ++ show(f1) ++ " and maxconsume" ++ show(y) ++ " your saving: " ++ show(f1-y) ++ " !!!congrat" 
  | otherwise = "monthlyuse :" ++ show(f1) ++ "...nothing special"
 where f1 = kw * h * 30
-- Question 3
-- Write a function that showcases the advantages of using let expressions to split a big expression into smaller ones.
-- Then, share it with other students in Canvas.
-- Question 3
-- Write a function that showcases the advantages of using let expressions to split a big expression into smaller ones.
-- Then, share it with other students in Canvas.
{-thunhapthang = nang suat + chuyen can + tro cap
 - nang suat = don gia * san pham
 - chuyen can = ngay cong * a}
 - tro cap = ngay cong * 30000-}
f3 :: Float->Float->Float->String
f3 am pr d = let
    loai1  = d * 10000
    loai2  = d * 20000
    loai3  = d * 30000
    nangsuat = am * pr
    trocap = d * 30000
  in 
   if d <= 10 
    then "ngaycong" ++ show(d) ++ " chuyencan: loai1" ++ " sanluong: " ++ show(am) ++ " thunhapthang: " ++ show(nangsuat  + loai1  + trocap) 
    else
     if 10 <=d && d <=20
      then  "ngaycong" ++ show(d) ++ " chuyencan: loai2" ++ " sanluong: " ++ show(am) ++ " thunhapthang: " ++ show(nangsuat  + loai2  + trocap) 
      else  "ngaycong" ++ show(d) ++ " chuyencan: loai3" ++ " sanluong: " ++ show(am) ++ " thunhapthang: " ++ show(nangsuat  + loai3  + trocap) 
-- Question 4
-- Write a function that takes in two numbers and returns their quotient such that it is not greater than 1.
-- Return the number as a string, and in case the divisor is 0, return a message why the division is not
-- possible. To implement this function using both guards and if-then-else statements.  
{-case1: use if then else-}
f4 :: Float->Float->String
f4 x y = 
 if x<y
  then "Thuong(x/y)  = " ++ show(x/y)
  else
   if y==0
    then "Khong chia duoc vi y=0"
    else "Sai dieu kien"
   {-case2: use guard-}
f4' :: Float->Float->String
f4' x y
 |x<y = "Thuong(x/y) = " ++ show(x/y)
 |y==0 = "Khong chia duoc vi y=0"
 |otherwise = "Sai dieu kien"
 
 -- Question 5
-- Write a function that takes in two numbers and calculates the sum of squares for the product and quotient
-- of those numbers. Write the function such that you use a where block inside a let expression and a
-- let expression inside a where block.
f5 :: Float -> Float -> String
f5 x y =
   let 
    sumofsqr = tichthuong
     where
      tichthuong
       | y/=0 = let 
              tich = (x*y)^2
              thuong = (x/y)^2
              in show(tich+thuong)
       | otherwise = "cant calculates"
   in "if we take 2 number " ++ show(x) ++ " and " ++ show(y) ++ " then sumofsqr: " ++ show(sumofsqr) 
               
               
