data Arvore = Null | No Int Arvore Arvore

minhaArvore :: Arvore
minhaArvore = No 52 (No 12 (No 12 Null Null) (No 52 Null Null)) (No 56 (No 52 Null Null) (No 64 Null Null))

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

-- Retorna a profundidade de um elemento na arvore
-- Se o elemento não estiver na arvore, retorna -1
profundidadeElemento :: Arvore -> Int -> Int
profundidadeElemento Null _ = -1 -- arvore nula nao possui nenhum elemento
profundidadeElemento (No n esq dir) x
    | (n == x) = 0 -- passo base
    | (buscaElemento esq x) = 1 + profundidadeElemento esq x -- encontrado na subarvore da esquerda
    | (buscaElemento dir x) = 1 + profundidadeElemento dir x -- encontrado na subarvore da direita
    | otherwise = -1 -- nao encontrado


-- Retorna uma lista de folhas vazias na arvore
folhasImpares :: Arvore -> [Int]
folhasImpares Null = []
folhasImpares (No n Null Null) -- No folha
    | (n `mod` 2 /= 0) = [n] -- n impar
    | otherwise = [] -- n par desconsiderado
folhasImpares (No n esq dir)
    = folhasImpares esq ++ folhasImpares dir -- concatena as folhas das arvores filhas

elementosRepetidos :: Arvore -> Int
elementosRepetidos Null = 0
elementosRepetidos (No n esq dir)
    | (buscaElemento esq n || buscaElemento dir n) =
        1 + (elementosRepetidos esq) + (elementosRepetidos dir)
    | otherwise = (elementosRepetidos esq) + (elementosRepetidos dir)    


main = do putStrLn (show (somaElementos minhaArvore))
          putStrLn (show (buscaElemento minhaArvore 30))
          putStrLn (show (buscaElemento minhaArvore 55))
          putStrLn (show (minimoElemento minhaArvore))
          print (profundidadeElemento minhaArvore 30)
          print (profundidadeElemento minhaArvore 55)
          print (profundidadeElemento minhaArvore 12)
          print (profundidadeElemento minhaArvore 52)
          print(folhasImpares minhaArvore)
          print (elementosRepetidos minhaArvore)