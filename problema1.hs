soma :: [Int] -> Int
soma [] = 0
soma (a:b) = a + soma b

main = do
    let foo = [2, 3, 4, 2, 5, 9]
    print(soma foo)