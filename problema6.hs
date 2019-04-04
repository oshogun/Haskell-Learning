cabeca :: [Int] -> Int
cabeca (a:_) = a

rabo :: [Int] -> [Int]
rabo (_:a) = a

ocorrencias :: [Int] -> Int -> Int
ocorrencias [] _ = 0
ocorrencias (a : b) c | (a == c) = 1 + ocorrencias b c
                      | otherwise = ocorrencias b c

main = do
    let foo = [2, 3, 4, 5, 4 ,3, 2, 6, 7]
    print(ocorrencias foo 2)
    print(ocorrencias foo 3)
    print(ocorrencias foo 7)
    print(ocorrencias foo 14)