data Arvore = Null | No Int Arvore Arvore

minhaArvore :: Arvore
minhaArvore = No 52 (No 32 (No 12 Null Null) (No 35 Null Null)) (No 56 (No 55 Null Null) (No 64 Null Null))
minhaOutraArvore = No 52 (No 32 (No 12 Null Null) (No 35 Null Null)) (No 56 (No 55 Null Null) (No 64 Null Null))
maisUmaArvore = No 52 (No 23 Null Null) minhaArvore
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
    | (n == x) = 1 + (ocorrenciasElemento esq x) + (ocorrenciasElemento dir x)
    | otherwise = (ocorrenciasElemento esq x) + (ocorrenciasElemento dir x)

maioresQueElemento :: Arvore -> Int -> Int
maioresQueElemento Null _ = 0
maioresQueElemento (No n esq dir) x
    | (n > x) = 1 + (maioresQueElemento esq x) + (maioresQueElemento dir x)
    | otherwise = (maioresQueElemento esq x) + (maioresQueElemento dir x)

somaPares :: Arvore -> Int
somaPares Null = 0
somaPares (No n esq dir)
    | (n `mod` 2 == 0) = 1 + (somaPares esq) + (somaPares dir)
    | otherwise = (somaPares esq) + (somaPares dir)

somaImpares :: Arvore -> Int
somaImpares Null = 0
somaImpares (No n esq dir)
    | (n `mod` 2 /= 0) = 1 + (somaImpares esq) + (somaImpares dir)
    | otherwise = (somaImpares esq) + (somaImpares dir)

subtraiParesImpares :: Arvore -> Int
subtraiParesImpares arv = (somaPares arv) - (somaImpares arv)

igual :: Arvore -> Arvore -> Bool
igual Null Null = True
igual Null _ = False
igual _ Null = False
igual (No n1 esq1 dir1) (No n2 esq2 dir2)
    | (n1 == n2) = (igual esq1 esq2) && (igual dir1 dir2)
    | otherwise = False 

altura :: Arvore -> Int
altura Null = 0
altura (No n Null Null) = 0
altura (No n esq Null) = 1 + altura esq
altura (No n Null dir) = 1 + altura dir
altura (No n esq dir)
    | (altura esq >= altura dir) = 1 + altura esq
    | otherwise = 1 + altura dir

folhas :: Arvore -> Int
folhas Null = 0
folhas (No n Null Null) = 1
folhas (No n esq dir) = folhas esq + folhas dir

emOrdem :: Arvore -> [Int]
emOrdem Null = []
emOrdem (No n esq dir)
    = (emOrdem esq) ++ [n] ++ (emOrdem dir)

menoresQueElemento :: Arvore -> Int -> [Int]
menoresQueElemento Null _ = []
menoresQueElemento (No n esq dir) x
    | ((n `mod` 2 == 0) && n < x) = 
        n : (menoresQueElemento esq x) ++ (menoresQueElemento dir x)
    | otherwise = (menoresQueElemento esq x) ++ (menoresQueElemento dir x)

main = do putStrLn (show (somaElementos minhaArvore))
          putStrLn (show (buscaElemento minhaArvore 30))
          putStrLn (show (buscaElemento minhaArvore 55))
          putStrLn (show (minimoElemento minhaArvore))
          print(ocorrenciasElemento minhaArvore 55)
          print(maioresQueElemento minhaArvore 22)
          print(subtraiParesImpares minhaArvore)
          print(igual minhaArvore minhaOutraArvore)
          print (igual minhaArvore maisUmaArvore)
          print (altura minhaArvore)
          print (altura maisUmaArvore)
          print (folhas minhaArvore)
          print (folhas maisUmaArvore)
          print (emOrdem minhaArvore)
          print (menoresQueElemento minhaArvore 56)