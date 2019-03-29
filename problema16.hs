divisible :: Int -> Int -> String
divisible x y | (mod x y == 0 ) = "divisivel" 
              | otherwise = "nao divisivel"

main = do
    print("Calculo da divisibilidade")
    print("Digite o primeiro operando")
    xStr <- getLine
    print("Digite o segundo operando")
    yStr <- getLine

    let x = (read xStr :: Int)
    let y = (read yStr :: Int)
    print (divisible x y)
