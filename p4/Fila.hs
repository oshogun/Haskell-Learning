module Fila (Fila (Queue), emptyQueue, enqueue, dequeue, first)  where

    data Fila t = Queue [t]
        deriving (Eq, Show)
    
    -- Adiciona elemento ao final da lista
    enqueue :: Fila t -> t -> Fila t
    enqueue (Queue q) x = Queue (q ++ [x])

    -- Remove o primeiro elemento da lista
    dequeue :: Fila t -> Fila t
    dequeue (Queue []) = error "Empty"
    dequeue (Queue (x:q)) = Queue q

    -- Retorna o primeiro elemento da lista
    first :: Fila t -> t
    first (Queue []) = error "Empty"
    first (Queue (x:q)) = x

    -- Constrói uma lista vazia
    emptyQueue :: Fila t
    emptyQueue = Queue []

