type Nome = String
type Disciplina = String
type Nota = Float
type Aluno = (Nome, Disciplina, Nota, Nota, Nota)

aluno :: Int -> Aluno
aluno 0 = ("Hermanoteu", "Paradigmas", 10, 6.5, 5.3)
aluno 1 = ("Micalateia", "SO II", 0, 0, 1.2)
aluno 2 = ("Guilherme", "Formais", 10, 10, 10)

getNome :: Aluno -> Nome
getNome (n, _,  _, _, _) = n

getNota1 :: Aluno -> Nota
getNota2 :: Aluno -> Nota
getNota3 :: Aluno -> Nota

getNota1 (_,_,n,_,_) = n
getNota2 (_,_,_,n,_) = n
getNota3 (_,_,_,_,n) = n

getMedia :: Aluno -> Float
getMedia a = do
    let n1 = (getNota1 a)
    let n2 = (getNota2 a)
    let n3 = (getNota3 a)
    
    (n1 + n2 + n3) / 3

getMediaTurma :: Int -> Float
getMediaTurma n | (n == 0) = getMedia(aluno 0)
                | otherwise getMedia(aluno n) + getMedia(aluno n - 1) / n 
main = do
    print(getNome(aluno 0) ++ " " ++ (show (getMedia (aluno 0))))
    print(getNome(aluno 2) ++ " " ++ (show (getMedia (aluno 2))))
    print(getNome(aluno 32) ++ " " ++ (show (getMedia (aluno 32))))
