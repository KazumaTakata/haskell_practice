

samplelist = [[3, 3, 44], [3, 4, 444]] :: [[Int]]

mul2 x = x * 2


sumlist :: [Int] -> Int

sumlist []       = 0
sumlist (x : xs) = x + sumlist xs

elementwiseMul :: [Int] -> Int -> [Int]

elementwiseMul []       a = []
elementwiseMul (x : xs) a = (x * a : elementwiseMul xs a)


elementwiseMul2 :: [Int] -> [Int] -> [Int]

elementwiseMul2 []       []         = []
elementwiseMul2 (x : xs) (x2 : xs2) = (x * x2 : elementwiseMul2 xs xs2)


elementwiseMul3 :: [[Int]] -> Int -> [[Int]]

elementwiseMul3 []       a = []
elementwiseMul3 (x : xs) a = elementwiseMul x a : elementwiseMul3 xs a
