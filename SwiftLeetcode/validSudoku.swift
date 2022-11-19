func isValidSudoku(_ board: [[Character]]) -> Bool {
    var rows: [Set] = Array(repeating: Set<Character>(), count: 9)
    var cols: [Set] = Array(repeating: Set<Character>(), count: 9)
    var boxes: [[Int]: Set<Character>] = [
        [0,0]: Set(),
        [0,1]: Set(),
        [0,2]: Set(),
        [1,0]: Set(),
        [1,1]: Set(),
        [1,2]: Set(),
        [2,0]: Set(),
        [2,1]: Set(),
        [2,2]: Set(),
    ]
    // Loop each cell of the board (Will probably need to be a nested for loop
    for (row, values) in board.enumerated() {
        for (col, value) in values.enumerated() {
            guard value != "." else {
                continue
            }
            let box = [row / 3, col / 3]
            if value in rows[row] {
                return false
            }
            // If the currrent cell value is already in any the row, col or box
            if rows[row].contains(value) || cols[col].contains(value) || boxes[box]!.contains(value) {
                return false
            }
            rows[row].insert(value)
            cols[col].insert(value)
            boxes[box]?.insert(value)
        }
    }
    return true
}



var board: [[Character]] = [
    ["5","3",".",".","7",".","5",".","."],
    ["6",".",".","1","9","5",".",".","."],
    [".","9","8",".",".",".",".","6","."],
    ["8",".",".",".","6",".",".",".","3"],
    ["4",".",".","8",".","3",".",".","1"],
    ["7",".",".",".","2",".",".",".","6"],
    [".","6",".",".",".",".","2","8","."],
    [".",".",".","4","1","9",".",".","5"],
    [".",".",".",".","8",".",".","7","9"]
]
print(isValidSudoku(board))

board = [
    ["5","3",".",".","7",".",".",".","."],
    ["6",".",".","1","9","5",".",".","."],
    [".","9","8",".",".",".",".","6","."],
    ["8",".",".",".","6",".",".",".","3"],
    ["4",".",".","8",".","3",".",".","1"],
    ["7",".",".",".","2",".",".",".","6"],
    [".","6",".",".",".",".","2","8","."],
    [".",".",".","4","1","9",".",".","5"],
    [".",".",".",".","8",".",".","7","9"]
]
print(isValidSudoku(board))