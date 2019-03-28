checkTriangle :: Float -> Float -> Float -> String

checkTriangle a b c =
    if a + b > c && a + c > b && b + c > a
        then
            "formam triangulo"
        else
            "nao formam triangulo"

main = do
    print "Digite os lados do triangulo, separados por enter"
    sideA <- getLine
    sideB <- getLine
    sideC <- getLine

    let a = (read sideA :: Float)
    let b = (read sideB :: Float)
    let c = (read sideC :: Float)

    print("Estes lados " ++ checkTriangle a b c)