-- Definição de uma função que faz exatamente a mesma coisa
-- que a função abs padrão do Haskell
absolute :: Float -> Float 
absolute x = 
	if x >= 0 then
		x
	else
		-x

-- Teste da função
main = do
	print "Digite o valor do qual deseja obter o valor absoluto"
	xStr <- getLine
	let x = (read xStr :: Float)
	print ("O valor eh " ++ show (absolute x))