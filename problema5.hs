-- O newtype funciona de forma muito semelhante ao data. A sintaxe é 
-- idêntica, e se você trocar todos os newtype por data, é bem provável
-- que compile e funcione. A principal diferença, é que o newtype recebe
-- exatamente um construtor com exatamente um tipo, sendo portanto usado
-- quando se deseja que o novo tipo a ser criado e o tipo do campo
-- sejam isomórficos, permitindo que se trate os dois tipos como diferentes
-- em tempo de compilação, porém idênticos em tempo de execução, removendo
-- overhead.

-- Exemplo

newtype Name = Name String -- permitido

-- newtype Person = Person String Int não permitido

data Person = Person String Int -- permitido

main = do
    print ("oi")