cabeca :: [Int] -> Int
cabeca (a:_) = a

rabo :: [Int] -> [Int]
rabo (_:a) = a

menor :: [Int] -> Int
menor [] = 0
menor [x] = x
menor (a : b) | (a <= cabeca b) = menor (a : (rabo b))
              | otherwise = menor b

main = do
    let listao = [4, 2, 3, 1]
    print(menor listao)