def evaluate(board):
    # Check rows, columns, and diagonals for a win
    for i in range(3):
        if board[i][0] == board[i][1] == board[i][2]:
            if board[i][0] == 'X':
                return 10
            elif board[i][0] == 'O':
                return -10

        if board[0][i] == board[1][i] == board[2][i]:
            if board[0][i] == 'X':
                return 10
            elif board[0][i] == 'O':
                return -10

    if board[0][0] == board[1][1] == board[2][2]:
        if board[0][0] == 'X':
            return 10
        elif board[0][0] == 'O':
            return -10

    if board[0][2] == board[1][1] == board[2][0]:
        if board[0][2] == 'X':
            return 10
        elif board[0][2] == 'O':
            return -10

    return 0  # No winner

def is_full(board):
    for i in range(3):
        for j in range(3):
            if board[i][j] == ' ':
                return False
    return True

def minimax(board, depth, is_maximizing):
    score = evaluate(board)

    if score == 10:
        return score - depth

    if score == -10:
        return score + depth

    if is_full(board):
        return 0

    if is_maximizing:
        best_score = -float('inf')
        for i in range(3):
            for j in range(3):
                if board[i][j] == ' ':
                    board[i][j] = 'X'
                    best_score = max(best_score, minimax(board, depth + 1, not is_maximizing))
                    board[i][j] = ' '
        return best_score

    else:
        best_score = float('inf')
        for i in range(3):
            for j in range(3):
                if board[i][j] == ' ':
                    board[i][j] = 'O'
                    best_score = min(best_score, minimax(board, depth + 1, not is_maximizing))
                    board[i][j] = ' '
        return best_score

def find_best_move(board):
    best_move = (-1, -1)
    best_score = -float('inf')

    for i in range(3):
        for j in range(3):
            if board[i][j] == ' ':
                board[i][j] = 'X'
                move_score = minimax(board, 0, False)
                board[i][j] = ' '

                if move_score > best_score:
                    best_score = move_score
                    best_move = (i, j)

    return best_move

def print_board(board):
    for row in board:
        print(" | ".join(row))
        print("-" * 9)

def main():
    board = [[' ' for _ in range(3)] for _ in range(3)]

    while True:
        print_board(board)

        if is_full(board) or evaluate(board) != 0:
            break

        row, col = find_best_move(board)
        board[row][col] = 'X'

        print("Computer's move:")
        print_board(board)

        if is_full(board) or evaluate(board) != 0:
            break

        row = int(input("Enter row (0, 1, 2): "))
        col = int(input("Enter col (0, 1, 2): "))
        board[row][col] = 'O'

    print_board(board)
    result = evaluate(board)
    if result == 10:
        print("Computer wins!")
    elif result == -10:
        print("You win!")
    else:
        print("It's a draw!")

if __name__ == "__main__":
    main()
