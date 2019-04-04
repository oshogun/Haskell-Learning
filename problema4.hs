cabeca :: [Int] -> Int
cabeca (a:_) = a

rabo :: [Int] -> [Int]
rabo (_:a) = a

menor :: [Int] -> Int
menor [] = 0
menor [x] = x
menor (a : b) | (a <= cabeca b) = menor (a : (rabo b))
              | otherwise = menor b

maior :: [Int] -> Int
maior [] = 0 
maior [x] = x
maior (a : b) | (a >= cabeca b) = maior (a : (rabo b))
              | otherwise = maior b

diferencaMaiorMenor :: [Int] -> Int
diferencaMaiorMenor [] = 0
diferencaMaiorMenor [x] = x
diferencaMaiorMenor l = maior l - menor l

main = do
    let foo = [2, 3 , 5 ,4]
    print(diferencaMaiorMenor foo)