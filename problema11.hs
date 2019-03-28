euclides :: Int -> Int -> Int

euclides a b =
    if b == 0 then a
        else euclides b (mod a b)



main = do
    print ("Algoritmo de Euclides")
    print ("Digite os operandos separados por enter")

    first <- getLine
    second <- getLine


    let a = (read first :: Int)
    let b = (read second :: Int)

    print("MDC (" ++ first ++ ", " ++ second ++ ") = " ++ show (euclides a b))
