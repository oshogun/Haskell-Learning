-- Definição da função de cálculo de potência --
power :: Float -> Float -> Float
power x y = x ** y 

-- Função main do programa --
main = do
	print "--- Calculadora de potencias ---"
	print "Digite a base da potencia a ser calculada e tecle ENTER:"
	xStr <- getLine
	print "Digite o expoente da potencia a ser calculada e tecle ENTER:"
	yStr <- getLine
	let x = (read xStr :: Float)
	let y = (read yStr :: Float)

	print ("O resultado foi: " ++ show (power x y))