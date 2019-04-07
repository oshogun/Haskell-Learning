mapear :: (t -> y) -> [t] -> [y]
mapear func lista = [func x | x <- lista]

main = do
    print(mapear succ [2,3,5,7])