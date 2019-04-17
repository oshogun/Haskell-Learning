module Ponto (Ponto (Ponto2D), distancia, colineares,
              determinante, formaTriangulo) where

data Ponto = Ponto2D (Float, Float)

distancia :: Ponto -> Ponto -> Float
distancia (Ponto2D (x1, y1)) (Ponto2D (x2, y2)) =
    sqrt((x2 - x1)**2 - (y2 - y1)**2)

determinante :: Ponto -> Ponto -> Ponto -> Float
determinante (Ponto2D (x1, y1)) (Ponto2D (x2, y2))
             (Ponto2D (x3, y3)) =
    (x1 * y2) + (y1 * x3) + (x2 * x3) - (y1 * x2) - (x1 * y3) - (y2 * x3)

colineares :: Ponto -> Ponto -> Ponto -> Bool
colineares a b c = ((determinante a b c) == 0)

formaTriangulo :: Ponto -> Ponto -> Ponto -> Bool
formaTriangulo a b c =
    not(colineares a b c)