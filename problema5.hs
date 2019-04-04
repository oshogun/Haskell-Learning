busca :: [Int] -> Int -> Bool
busca [] _ = False
busca (a : b) elem | (elem == a) = True
                   | otherwise = busca b elem

main = do
    let foo = [2, 5, 9, 8, 15]
    print(busca foo 2)
    print(busca foo 15)
    print(busca foo 23)