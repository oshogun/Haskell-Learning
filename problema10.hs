greatest :: Float -> Float -> Float -> Float
greatest a b c | (a >= b && a >= c) = a
               | (b >= a && b >= c) = b
               | otherwise = c

main = do
    print ("Digite os 3 valores separados por enter")

    strA <- getLine
    strB <- getLine
    strC <- getLine

    let a = (read strA :: Float)
    let b = (read strB :: Float) 
    let c = (read strC :: Float) 

    print (greatest a b c)