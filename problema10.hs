filtrar :: (t -> Bool) -> [t] -> [t]
filtrar func lista = [x | x <- lista, func x]

negativo :: Int -> Bool
negativo n | (n < 0) = True
           | otherwise = False

main = do
    print(filtrar negativo [3,-2,5,9,-3])