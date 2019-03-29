primeCheck :: Int -> String

primeCheck n = 
    if length [x | x <- [2 .. n], mod n x == 0] == 1
        then "primo"
        else "nao primo"

main = do
    print("Checagem de numeros primos")
    print("Digite o numero")

    strN <- getLine
    let n = (read strN :: Int)
    print(primeCheck n)

