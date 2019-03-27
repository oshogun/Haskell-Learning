-- Definição de uma função de cálculo de área de triângulo
area :: Float -> Float -> Float 
area base height = (base * height) / 2

-- Teste da função 
main = do 
    print ("--- Calculo de area de triangulos ---")
    putStrLn ""
    print ("Digite a base do triangulo e tecle ENTER:")
    baseStr <- getLine
    print ("Digite a altura do triangulo e tecle ENTER:")
    heightStr <- getLine

    let base = (read baseStr :: Float)
    let height = (read heightStr :: Float)

    print("A area do triangulo eh: " ++ show(area base height))
