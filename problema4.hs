data Arvore = Null | No Int Arvore Arvore

minhaArvore :: Arvore
minhaArvore = No 55 (No 32 (No 12 Null Null) (No 35 Null Null)) (No 56 (No 55 Null Null) (No 64 Null Null))

somaElementos :: Arvore -> Int
somaElementos Null = 0
somaElementos (No n esq dir) = n + (somaElementos esq) + (somaElementos dir)

buscaElemento :: Arvore -> Int -> Bool
buscaElemento Null _ = False
buscaElemento (No n esq dir) x 
    | (n == x) = True                           
    | otherwise = (buscaElemento esq x) || (buscaElemento dir x)

limiteSup :: Int
limiteSup = 1000 --Define um limite superior para o maior número

minimo :: Int -> Int -> Int
minimo x y | (x < y) = x
           | otherwise = y

minimoElemento :: Arvore -> Int
minimoElemento Null = limiteSup 
minimoElemento (No n esq dir) = 
    minimo n (minimo (minimoElemento esq) (minimoElemento dir))

ocorrenciasElemento :: Arvore -> Int -> Int
ocorrenciasElemento Null _ = 0
ocorrenciasElemento (No n esq dir) x
    | (n == x)  = 1 + (ocorrenciasElemento esq x) + (ocorrenciasElemento dir x)
    | otherwise = (ocorrenciasElemento esq x) + (ocorrenciasElemento dir x)

maioresQueElemento :: Arvore -> Int -> Int
maioresQueElemento Null _ = 0
maioresQueElemento (No n esq dir) x
    | (n > x) = 1 + (maioresQueElemento esq x) + (maioresQueElemento dir x)
    | otherwise = (maioresQueElemento esq x) + (maioresQueElemento dir x)


quantidade :: Arvore -> Int
quantidade Null = 0
quantidade(No n esq dir) = 1 + quantidade esq + quantidade dir

mediaElementos :: Arvore -> Float
mediaElementos Null = 0
mediaElementos arv =
    fromIntegral(somaElementos arv) / fromIntegral (quantidade arv)

elementos :: Arvore -> [Int]
elementos Null = []
elementos (No n esq dir) = [n] ++ elementos(esq) ++ elementos(dir)

main = do putStrLn (show (somaElementos minhaArvore))
          putStrLn (show (buscaElemento minhaArvore 30))
          putStrLn (show (buscaElemento minhaArvore 55))
          putStrLn (show (minimoElemento minhaArvore))
          print(ocorrenciasElemento minhaArvore 55)
          print(maioresQueElemento minhaArvore 25)
          print(quantidade minhaArvore)
          print(mediaElementos minhaArvore)
          print(elementos minhaArvore)
