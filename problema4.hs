type Ponto = (Float, Float)
type Raio = Float 
type Circulo = (Ponto, Raio)

c = (2.2, 3.5)
pontin = (2.4, 3.9)
pontin2 = (9.5, 9.7)
circulo = (c, 4.0)


centroCirculo :: Circulo -> Ponto
centroCirculo (ponto, _) = ponto 

raioCirculo :: Circulo -> Float
raioCirculo (_, r) = r

distancia :: Ponto -> Ponto -> Float 
distancia (x1, y1) (x2, y2)
    = sqrt((x2 - x1) ** 2 + (y2 - y1) ** 2)

pertence :: Ponto -> Circulo -> Bool
pertence x (centro, raio) 
    = (distancia x centro) <= raio 

dentro :: Circulo -> [Ponto] -> [Ponto]
dentro circulo pontos =
    [x | x <- pontos, pertence x circulo]

main = do
    print (c)
    print (circulo)
    print (pertence c circulo)
    print (pertence pontin circulo)
    print (pertence pontin2 circulo)
    print (dentro circulo [c, pontin, pontin2])