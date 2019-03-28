euclides :: Int -> Int -> Int

euclides a b =
    if b == 0 then a
        else euclides b (mod a b)

mmc :: Int -> Int -> Int

mmc a b =
    quot (a * b)  (euclides a b)

main = do
    print ("MMC: digite os 2 numeros separados por enter")

    first <- getLine
    second <- getLine

    let a = (read first :: Int)
    let b = (read second :: Int)

    print("MMC (" ++ first ++ ", " ++ second ++") = " ++ show (mmc a b))
