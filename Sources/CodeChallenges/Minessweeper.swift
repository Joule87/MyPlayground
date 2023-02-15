import Foundation

// Define the size of the board
let row = 8
let column = 8

// Define the number of mines
let mines = 10

// Create an 2D array to represent the board
var board = [[Int]](repeating: [Int](repeating: 0, count: column), count: row)
var revealedFogWar: [(row: Int, column: Int)] = []

// Place mines randomly on the board
for _ in 0..<mines {
    let randomRow = Int.random(in: 0..<row)
    let randomColumn = Int.random(in: 0..<column)
    board[randomRow][randomColumn] = -1
}

// Calculate the number of mines in each cell's surrounding
for i in 0..<row {
    for j in 0..<column {
        if board[i][j] == -1 {
            continue
        }
        var count = 0
        for x in i-1...i+1 {
            for y in j-1...j+1 {
                if x >= 0 && x < row && y >= 0 && y < column && board[x][y] == -1 {
                    count += 1
                }
            }
        }
        board[i][j] = count
    }
}

// Prints the board (without fog)
func printBoard() {
    // Print the board
    for i in 0..<row {
        for j in 0..<column {
            if revealedFogWar.isEmpty || !revealedFogWar.contains(where: { $0 == (i,j) }) {
                print("#", terminator: " ")
            } else if board[i][j] == -1 {
                print("*", terminator: " ")
            } else {
                print(board[i][j], terminator: " ")
            }
        }
        print("")
    }
}

// Reveals a cell (to be implemented)
func reveal(x: Int, y: Int) {
    if revealedFogWar.contains(where: { $0 == (x,y) }) {
        return
    }
    
    if board[x][y] == -1 {
        print("You lost")
        return
    }
    
    revealedFogWar.append((x,y))
    
    if revealedFogWar.count == (row * column) - mines {
        print("You win")
        return
    }
    
    if board[x][y] > 0 {
        return
    }
    
    for i in x-1...x+1 {
        for j in y-1...y+1 {
            if i >= 0 && i < row && j >= 0 && j < column {
                reveal(x: i, y: j)
            }
        }
    }
}
