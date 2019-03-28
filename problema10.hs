maior :: Float -> Float -> Float -> Float

maior a b c = if a >= b && a >= c
    then a
    else if b >= a && b >= c then b
        else c

main = do
    print ("Digite os 3 valores separados por enter")

    strA <- getLine
    strB <- getLine
    strC <- getLine

    let a = (read strA :: Float)
    let b = (read strB :: Float) 
    let c = (read strC :: Float) 

    print (maior a b c)