fibonacci :: Int -> Int
fibonacci n | (n == 0) = 0
            | (n == 1) = 1
            | otherwise = fibonacci (n - 1) + fibonacci (n - 2)

main = do
    print "Digite um inteiro nao muito grande pra nao estourar a pilha"
    nStr <- getLine
    let n = (read nStr :: Int)

    print("Fib(" ++ nStr ++ ") = " ++ show (fibonacci n))