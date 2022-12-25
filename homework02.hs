-- Question 1
-- Add the type signatures for the functions below and then remove the comments and try to compile.
-- f1 x y z = x ** (y/z)
f1 :: Double -> Double -> Double -> Double
f1 x y z = x ** (y / z)
-- f2 x y z = sqrt (x/y - z)
f2 :: Double -> Double -> Double -> Double 
f2 x y z =  sqrt (x/y - z)
-- f3 x y = [x == True] ++ [y]
f3 :: Bool -> Bool -> [Bool]
f3 x y = [x == True] ++ [y]
-- f4 x y z = x == (y ++ z)
f4 :: [Int]->[Int]->[Int]->Bool
f4 x y z = x == (y ++ z)
f5 :: Double -> Double -> Double
f5 kW h = kW * h * 30
-- Question 2
-- Why should we define type signatures of functions? How can they help you? How can they help others?
{- Haskell là một ngôn ngữ lập trình hàm và mỗi chương trình bao gồm các hàm. Mỗi hàm nhận một số tham số cố định của một số loại và trả về một giá trị cũng có một loại. 
- Việc xác định loại của hàm sẽ thông báo cho toàn thế giới rằng hàm đó tồn tại, đây là tên của nó và đây là các kiểu mà nó hoạt động.-}
-- Question 3
-- Why should you define type signatures for variables? How can they help you?
 {-giúp việc viết hàm dễ dàng hơn khó bị sai khi hàm đã được xác định trước kiểu loại, người khác cũng sẽ nhận ra được mục đích lập trình hàm của người viết.-}
-- Question 4
-- Are there any functions in Haskell that let you transform one type to the other? Try googling for the answer.
{-Có
- ví dụ: tổng quát dùng hàm show -}
f :: Show a => a -> String
f  = show  
-- Question 5
-- Can you also define in Haskell list of lists? Did we showed any example of that? How would you access the inner
-- most elements?
{- Có 
Ví dụ: -}
list :: [[[Int]]]
list = [[[1..11], [30..31]], [[2..6]]]
{-list !! 0 !! 1 -> [1..11]-}
