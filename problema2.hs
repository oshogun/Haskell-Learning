fritz :: Int -> Int 

fritz n
    | (n == 0) = 0
    | (n == 1) = 1
    | otherwise = fritz (n - 1) + 3 * (fritz (n - 2))

main = do
    print (map fritz [0, 1, 2, 3, 4, 5, 6, 7])