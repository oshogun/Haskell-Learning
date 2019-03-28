euclides :: Int -> Int -> Int

euclides a b =
    if b == 0 then a
        else euclides b (mod a b)

coprimes :: Int -> Int -> Bool

coprimes a b = 
    if euclides a b == 1 then
        True
    else
        False

main = do
    print ("Checagem coprimos. Digite os inputs")

    strA <- getLine
    strB <- getLine

    let a = (read strA :: Int)
    let b = (read strB :: Int)

    print (coprimes a b)