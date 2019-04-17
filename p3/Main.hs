module Main(main, minhaArvore) where

import Arvore

minhaArvore :: Arvore
minhaArvore = No 55 (No 32 (No 12 Null Null) (No 35 Null Null)) (No 56 (No 55 Null Null) (No 64 Null Null))

main = do putStrLn (show (somaElementos minhaArvore))
          putStrLn (show (buscaElemento minhaArvore 30))
          putStrLn (show (buscaElemento minhaArvore 55))
          putStrLn (show (minimoElemento minhaArvore))
          print(ocorrenciasElemento minhaArvore 55)
          print(maioresQueElemento minhaArvore 25)
          print(quantidade minhaArvore)
          print(mediaElementos minhaArvore)
          print(elementos minhaArvore)
