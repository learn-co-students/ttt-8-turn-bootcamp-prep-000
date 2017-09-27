def display_board(board)
    puts " #{board[0]}" " |" " #{board[1]}" " |" " #{board[2]} "
    puts "-----------"
    puts " #{board[3]}" " |" " #{board[4]}" " |" " #{board[5]} "
    puts "-----------"
    puts " #{board[6]}" " |" " #{board[7]}" " |" " #{board[8]} "
end
def input_to_index(user_input)
    user_input.to_i - 1
end

def valid_move?(board, position)
    if position_taken?(board, position) == true || position.between?(0,8) == false
      return false
    else
        return true
    end
end

def position_taken?(board, position)
  if board[position] == " " || board[position] == "" || board[position] == nil
     return false
  else
    return true
  end
end

def move(board, index, character = "X")
    board[index] = character
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  position = input_to_index(user_input)
  if valid_move?(board, position)
    move(board, position, character = "X")
    display_board(board)
  else turn(board)
  end
end
