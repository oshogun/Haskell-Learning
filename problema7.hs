alunos :: [(Int, String, Float)]
alunos = [(1, "Ana", 3.4), (2, "Bob", 6.7), (3, "Tom", 7.6)]

getNome :: (Int, String, Float) -> String
getNome (a,b,c) = b

getPrimeiroAluno :: [(Int, String, Float)] -> (Int, String, Float)
getPrimeiroAluno (a:_) = a

diferentes :: (Int, String, Float) -> (Int, String, Float) -> Bool
diferentes (a, b, c) (d, e, f) | (a /= d || b /= e || c /= f) = True
                               | otherwise = False


gerarPares :: [t] -> [u] -> [(t,u)] 
gerarPares l1 l2 = [(a,b) | a <- l1, b <- l2]

gerarParesAlunos :: [(Int, String, Float)] -> [(Int, String, Float)] -> [(String, String)]
gerarParesAlunos l1 l2 = [(getNome a, getNome b) | a <- l1, b <- l2, diferentes a b]

aprovado :: (Int, String, Float) -> Bool
aprovado (_, _, c) | (c >= 6.0) = True
                   | otherwise = False

aprovados :: [(Int, String, Float)] -> [String]
aprovados lista = map getNome (filter aprovado lista)

aprovados2 :: [(Int, String, Float)] -> [String]

aprovados2 lista = [getNome x | x <- lista, aprovado x] 
main = do
    print (getPrimeiroAluno alunos)
    print (gerarParesAlunos alunos alunos)
    print (aprovados2 alunos)