euclides :: Int -> Int -> Int
mdc :: Int -> Int -> Int -> Int 
greatest :: Int -> Int -> Int -> Int


greatest a b c = if a >= b && a >= c
    then a
    else if b >= a && b >= c then b
        else c

euclides a b =
    if b == 0 then a
        else euclides b (mod a b)

mdc a b c =
    if greatest a b c == a then 
        euclides a (euclides b c)
    else if greatest a b c == b then
        euclides b (euclides a c)
    else
        euclides c (euclides a b)

main = do
    print ("Algoritmo de Euclides")
    print ("Digite os operandos separados por enter")

    first <- getLine
    second <- getLine
    third <- getLine

    let a = (read first :: Int)
    let b = (read second :: Int)
    let c = (read third :: Int)

    print("MDC (" ++ first ++ ", " ++ second ++ ", " ++ third ++ ") = " ++ show (mdc a b c))
