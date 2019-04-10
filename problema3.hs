data Ponto = Ponto2D Float Float | Ponto3D Float Float Float

distancia :: Ponto -> Ponto -> Float
distancia (Ponto2D a b) (Ponto2D c d) =
    sqrt ((c - a)**2 + (d - b)**2)

distancia (Ponto3D a b c) (Ponto3D d e f) =
    sqrt ((d - a)**2 + (e - b)**2 + (f - c)**2)

main = do
    let ponto1 = Ponto2D 3.4 2.3
    let ponto2 = Ponto2D 2.2 5.5

    let ponto3 = Ponto3D 3.2 4.2 5.2
    let ponto4 = Ponto3D 4.2 5.2 6.2

    print(distancia ponto1 ponto2)
    print(distancia ponto3 ponto4)