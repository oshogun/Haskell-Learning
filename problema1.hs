import Data.List

procurar :: Int -> [Int] -> Bool
procurar _ [] = False
procurar n (x:xs)
    | (n == x) = True
    | otherwise = procurar n xs

removerDuplicados :: [Int] -> [Int]
removerDuplicados [] = []
removerDuplicados (x:xs) 
    | procurar x xs = removerDuplicados xs
    | otherwise = x : removerDuplicados xs

mesmosElementos :: [Int] -> [Int] -> Bool

mesmosElementos a b = 
   ((removerDuplicados a) \\ (removerDuplicados b)) == []

main = do
    let l1 = [2, 2, 3, 3, 4, 5, 1]
    let l2 = [1, 2, 3, 4, 5]
    print(mesmosElementos l1 l2)