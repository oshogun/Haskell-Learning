euclides :: Int -> Int -> Int
euclides a b | (b == 0) = a
             | otherwise = euclides b (mod a b)

coprimes :: Int -> Int -> Bool
coprimes a b | (euclides a b == 1) = True 
             | otherwise = False

main = do
    print ("Checagem coprimos. Digite os inputs")

    strA <- getLine
    strB <- getLine

    let a = (read strA :: Int)
    let b = (read strB :: Int)

    print (coprimes a b)