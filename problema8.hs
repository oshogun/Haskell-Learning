inverte :: [t] -> [t]
inverte [] = []
inverte (x : xs) = inverte xs ++ [x]

main = do
    print(inverte [1,2,3])