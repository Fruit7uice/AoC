elfsKcal :: [[Int]]
elfsKcal = [[1000, 2000, 3000], [4000], [5000, 6000], [7000, 8000, 9000], [10000]]


f :: [[Int]] -> Int
f xs = g 0 0 0 $ map sum xs
-- [6, 4, 11, 24, 10]

g :: Int -> Int -> Int -> [Int] -> Int
g m n i [] = n+1
g m n i (x:xs)
    | x > m = g x i (i+1) xs
    | otherwise = g m n (i+1) xs

-- int n = 0;
-- currentMax = 0;
-- for(int i = 0;i< a.length();i++){if (a[i] > currentMax) n = i+1}
-- return n