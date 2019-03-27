-- Definição da função de xor
exclusiveOr :: Bool -> Bool -> Bool 
exclusiveOr a b = (not a && b) || (not b && a)

main = do
    print("Digite o primeiro valor booelano:")
    xStr <- getLine
    print("Digite o segundo valor booleano:")
    yStr <- getLine
    let x = (read xStr :: Bool)
    let y = (read yStr :: Bool)

    print(xStr ++ " XOR " ++ yStr ++ " = " ++ show (exclusiveOr x y))

-- Tabela verdade:
    -- print (exclusiveOr True False) retorna true
    -- print (exclusiveOr True True) retorna false
    -- print (exclusiveOr False True) retorna true
    -- print (exclusiveOr False False) retorna false