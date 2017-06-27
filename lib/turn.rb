def display_board(board)
    rows = [" #{board[0]} | #{board[1]} | #{board[2]} ", "-----------", " #{board[3]} | #{board[4]} | #{board[5]} ", "-----------", " #{board[6]} | #{board[7]} | #{board[8]} "]
    puts rows[0]
    puts rows[1]
    puts rows[2]
    puts rows[3]
    puts rows[4]
end

def input_to_index(user_input)
    user_input.to_i - 1
end

def valid_move?(board, index)
    if (position_taken?(board, index) == false) && (index >= 0) && (index <= 8)
      return true
    else
      return false
    end
end

def position_taken?(board, index)
    if (board[index] == " ") || (board[index] == "") || (board[index] == nil)
      return false
    elsif (board[index] == "X") || (board[index] == "O")
      return true
    end
end

def move(board, index, char = "X")
    board[index] = char
end

def turn(board)
    puts "Please enter 1-9:"
    user_input = gets.chomp
    index = input_to_index(user_input)
      if valid_move?(board, index)
        move(board, index)
        display_board(board)
      else
        turn(board)
      end
end
