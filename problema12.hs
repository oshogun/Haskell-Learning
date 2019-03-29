euclides :: Int -> Int -> Int
euclides a b | (b == 0) = a
             | otherwise = euclides b (mod a b)

greatest :: Int -> Int -> Int -> Int
greatest a b c | (a >= b && a >= c) = a
               | (b >= a && b >= c) = b
               | otherwise = c

mdc :: Int -> Int -> Int -> Int 
mdc a b c | (greatest a b c == a) = euclides a (euclides b c)
          | (greatest a b c == b) = euclides b (euclides a c)
          | otherwise = euclides c (euclides a b)

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
