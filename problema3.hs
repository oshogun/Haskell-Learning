class (Integral x) => MeuInt x where

    bigger :: x -> x -> x
    
    smaller :: x -> x -> x
    
    par :: x -> Bool

    impar :: x -> Bool


    mdc :: x -> x -> x
    (+++) :: x -> x -> x
    (===) :: x -> x -> Bool
    -- retorna se o numero é multiplo de 10
    redondo :: x -> Bool

    bigger a b | a > b = a
               | otherwise = b
    
    smaller a b | a == (bigger a b) = b
                | otherwise = a
    
    par n | (n `mod` 2 == 0) = True 
          | otherwise = False

    impar n = not (par n)

    mdc m n | (n == 0) = m
            | otherwise = mdc n (m `mod` n)

    m ===  n | (m - n <= 1) = True 
            | otherwise = False

    redondo n | (n `mod` 10 == 0) = True
              | otherwise= False
    
    n +++  m = n + m - 1
    
instance MeuInt Integer
instance MeuInt Int 

main = do
    print (bigger (4::Integer) (2::Integer))
    print (smaller (2::Integer) (23::Integer))
    print (par (2::Integer))
    print (par (3::Integer))
    print (impar (2::Integer))
    print (impar (3::Integer))
    print (mdc (2500::Integer) (5000::Integer))
    print((1::Integer) === (2::Integer))
    print ((2::Integer) +++ (2::Integer))