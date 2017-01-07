def display_board(board = [" "," "," "," "," "," "," "," "," "])
row1 = " #{board[0]} | #{board[1]} | #{board[2]} "
row2 = " #{board[3]} | #{board[4]} | #{board[5]} "
row3 = " #{board[6]} | #{board[7]} | #{board[8]} "
seperator = "-----------"
puts row1
puts seperator
puts row2
puts seperator
puts row3
end

def input_to_index(user_input)
    return user_input.to_i - 1
end

def valid_move?(board, index)
    if index > 8 || index < 0 || board[index] == "X" || board[index] == "O"
        return false
    else index <= 8 && board[index] != "X" && board[index] != "O"
        return true
    end
end

def move(board, index, character = "X")
    board[index] = character
    return board
end

def turn(board)
    puts "Please enter 1-9:"
    user_input = gets.strip
    index = input_to_index(user_input)
    if valid_move?(board, index) == true
        move(board, index, character = "X")
        display_board(board)
    else valid_move?(board, index) == false
            turn(board)
    end
end
