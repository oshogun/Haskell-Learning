-- Definição da função que avalia alunos
evaluateStudent :: Float -> Float -> Float -> String

evaluateStudent a b c =
	if (a + b + c) / 2 >= 6.0 then
		"Aprovado"
	else 
		"Reprovado"

-- Teste da função
main = do 
	print "Ferramenta de julgamento de alunos"

	print "Digite a nota da prova 1"
	p1 <- getLine 
	print "Digite a nota da prova 2"
	p2 <- getLine 
	print "Digite a nota da prova 3"
	p3 <- getLine 

	let a = read p1 :: Float
	let b = read p2 :: Float 
	let c = read p3 :: Float 

	print("O aluno esta " ++ evaluateStudent a b c)