def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
    if index.between?(0, 8) && position_taken?(board, index) == false
        true
    end
end

def position_taken?(board, index)
    if board[index] == " "
        false
    elsif board[index] == ""
        false
    elsif board[index] == nil
        false
    else
        true
    end
end

def input_to_index(number)
    number = number.to_i
    number = number - 1
end

def move(array, index, value = "X")
    array[index] = value
    return array
end

def turn(board)
    puts "Please enter 1-9:"
    user_input = gets.strip
    user_input = input_to_index(user_input)

    if valid_move?(board, user_input) == true
        move(board, user_input)
        display_board(board)
    else
        turn(board)
    end
end
