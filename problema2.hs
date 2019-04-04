size :: [Int] -> Int
size [] = 0
size (a : b) = 1 + size b

soma :: [Int] -> Int
soma [] = 0
soma (a:b) = a + soma b

media :: [Int] -> Float
media [] = 0
media l = 
    fromIntegral(soma l) / fromIntegral(size l)

main = do
    let foo = [2, 3, 5, 7]
    print(media foo)