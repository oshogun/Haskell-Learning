module Main(main) where

import Ponto

main = do
    let p1 = (Ponto2D (3.5, 5.5))
    let p2 = (Ponto2D (7.2, 8.223))
    let p3 = (Ponto2D (2.237, 5.5432))

    print (formaTriangulo p1 p2 p3)
