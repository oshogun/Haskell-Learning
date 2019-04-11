sumOdds :: Int -> Int

-- Soma todos os numeros impares menores ou iguais
-- a n
sumOdds n
    | (n <= 0) = 0
    | (n > 0 && (n `mod` 2 /= 0)) = n + sumOdds (n - 1)
    | otherwise = sumOdds (n - 1)

main = do
    print (sumOdds 3)
    print (sumOdds 5)
    print (sumOdds (-2))
    print (sumOdds 2)