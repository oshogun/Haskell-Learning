delta :: Float -> Float -> Float -> Float

bhaskara :: Float -> Float -> Float -> [Float]

delta a b c = b**2 - 4 * a * c

bhaskara a b c =
    if delta a b c < 0 then
        []
    else if delta a b c == 0 && a /= 0 then
        [-b / (2 * a)]
    else
        [-b + sqrt(abs(delta a b c)) / 2 * a, -b - sqrt(abs(delta a b c ))/ 2 *a]

main = do
    print ("Digite os 3 coeficientes da funcao de 2o grau")
    strA <- getLine
    strB <- getLine
    strC <- getLine

    let a = (read strA :: Float)
    let b = (read strB :: Float)
    let c = (read strC :: Float)

    print("As raizes sao: " ++ show(bhaskara a b c))