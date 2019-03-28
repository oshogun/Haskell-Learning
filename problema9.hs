distance :: [Float]-> [Float] -> Float 

distance [x1, y1, z1] [x2, y2, z2] =
    sqrt ((x2 - x1)**2 + (y2 - y1)**2 + (z2 - z1)**2)

main = do
    print("Digite as coordenadas do primeiro ponto separadas por enter")
    x1Str <- getLine
    y1Str <- getLine
    z1Str <- getLine

    print("Digite as coordenadas do segundo ponto separadas por enter")
    x2Str <- getLine
    y2Str <- getLine
    z2Str <- getLine

    let point1 = [(read x1Str :: Float), (read y1Str :: Float), (read z1Str :: Float)]
    let point2 = [(read x2Str :: Float), (read y2Str :: Float), (read z2Str :: Float)]

    print("A distancia entre os dois pontos eh de: " ++ show(distance point1 point2))