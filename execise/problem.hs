
myLast :: [Int] -> Int
myLast (x : []) = x
myLast (x : xs) = myLast xs


myButLast :: [Int] -> Int -> Int
myButLast (x : []) 0 = x
myButLast (x : xs) 0 = x
myButLast (x : []) i = x
myButLast (x : xs) i = myButLast xs (i - 1)

myLength :: [Int] -> Int
myLength ([ x ] ) = 1
myLength (x : xs) = 1 + myLength xs

myReverse :: [Int] -> [Int]
myReverse (x : []) = [x]
myReverse (x : xs) = myReverse xs ++ [x]


data NestedList   = Elem Int | List [NestedList]



myFlatten :: NestedList -> [Int]
myFlatten (Elem x       ) = [x]
myFlatten (List (x : xs)) = myFlatten x ++ myFlatten (List xs)
myFlatten (List []      ) = []

-- myCompress :: [Int] -> [Int]
myCompressInn :: [Int] -> Int -> [Int]

myCompressInn (x : xs) prev =
    if prev == x then myCompressInn xs x else [x] ++ myCompressInn xs x
myCompressInn ([]) prev = []



myPackInn :: [Char] -> Char -> String -> [String]

myPack (x: xs) prev prevStr = if prev != x then [prevStr] ++ myPack xs x  
