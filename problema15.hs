euclides :: Int -> Int -> Int
euclides a b | (b == 0) = a
             | otherwise = euclides b (mod a b)

coprimes :: Int -> Int -> Bool
coprimes a b | (euclides a b == 1) = True 
             | otherwise = False

euler :: Int -> Int

euler n = 
    length [x | x <- [1..n], coprimes x n]

main = do
    print("Funcao totiente de Euler")
    print("Digite o valor de N")
    nStr <- getLine
    let n = (read nStr :: Int)

    print("Phi(" ++ nStr ++ ") = " ++ show(euler n))