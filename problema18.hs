calculate :: Char -> Float -> Float -> Float

calculate op x y | (op == '+') = x + y
                 | (op == '-') = x - y
                 | (op == '/') = x / y
                 | otherwise = x - y

main = do
    print("Calculadora")
    print("Digite a operacao (+ - * /)")
    op <- getChar
    _ <- getLine
    print("Digite o primeiro operando")
    strX <- getLine
    print("Digite o segundo operando")
    strY <- getLine

    let x = (read strX :: Float)
    let y = (read strY :: Float)

    print(calculate op x y)