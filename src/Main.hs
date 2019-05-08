
import Sudoku 

main = do
    let grid = readGrid ".......1.4.........2...........5.4.7..8...3....1.9....3..4..2...5.1........8.6..."
    mapM_ print grid