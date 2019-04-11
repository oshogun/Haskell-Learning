data Ponto = Ponto2D Float Float 

distancia :: Ponto -> Ponto -> Float
distancia (Ponto2D a b) (Ponto2D c d) =
    sqrt ((c - a)**2 + (d - b)**2)


determinante :: Ponto -> Ponto -> Ponto -> Float
determinante (Ponto2D x1 y1) (Ponto2D x2 y2) (Ponto2D x3 y3) =
    (x1 * y2) + (y1 * x3) + (x2 * x3) - (y1 * x2) - (x1 * y3) - (y2 * x3)
colineares :: Ponto -> Ponto -> Ponto -> Bool

colineares a b c = ((determinante a b c) == 0)

    
main = do
    let ponto1 = Ponto2D 2.0 1.0
    let ponto2 = Ponto2D 0.0 (-3.0)
    let ponto3 = Ponto2D (-2.0) (-7.0)
    print(distancia ponto1 ponto2)
    print(colineares ponto1 ponto2 ponto3)