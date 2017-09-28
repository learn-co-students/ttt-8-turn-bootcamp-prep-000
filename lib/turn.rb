board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

def display_board(board)
    puts " #{board[0]} | #{board[1]} | #{board[2]} "
    puts "-----------"
    puts " #{board[3]} | #{board[4]} | #{board[5]} "
    puts "-----------"
    puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
    input.to_i - 1
end

def valid_move?(board, index)
    if board[index] == "X" || board[index] == "O" || index.between?(0, 8) || index < 0
        false
    else
        true
    end
end

def turn(board)
    puts "Please enter 1-9:"
    move = gets.strip
    int = input_to_index(move)
    puts valid_move?(board, int)
    if valid_move?(board, int)
        move(board, int, "X")
        display_board(board)
    else
        puts "Please enter 1-9:"
        move = gets.strip
        int = input_to_index(move)
    end
end

def move(board, index, character = "X")
    board[index] = character
end

turn(board)
