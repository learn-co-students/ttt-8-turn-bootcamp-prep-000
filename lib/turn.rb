def display_board(board)
    puts " #{board[0]} | #{board[1]} | #{board[2]} "
    puts "-----------"
    puts " #{board[3]} | #{board[4]} | #{board[5]} "
    puts "-----------"
    puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input_user)
    input_user.to_i - 1
end

# code your #valid_move? method here
def valid_move? (board, index)
    if ((position_taken?(board, index)) == false) && (index >= 0 && index <= 8)
        return true
        elsif (position_taken?(board, index)) == true
        return false
        elsif index > 8 || index < 0
        return false
    end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken? (board, index)
    if board[index] == " " || board[index] == "" || board[index] == nil
        return false
        elsif board[index] == "X" || board[index] == "O"
        return true
    end
end

def move (board, index, character = "X")
    board[index] = character
end

def turn(board)
    puts "Please enter 1-9:"
    input_user = gets.strip
    index = input_to_index(input_user)
    if (valid_move?(board, index) == true)
        move(board, index, character = "X")
    else
        turn(board)
    end
    display_board(board)
end
