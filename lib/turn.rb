def display_board(board)
  puts  " #{board[0]} | #{board[1]} | #{board[2]} "
  puts  "-----------"
  puts  " #{board[3]} | #{board[4]} | #{board[5]} "
  puts  "-----------"
  puts  " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  user_input = user_input.to_i
  user_input -= 1
end

def position_taken?(board, index)
  if (board[index] == 'X' || board[index] == 'O')
    false
  else
    true
end
end

def valid_move?(board, index)
  if (index.between?(0, 8) && (position_taken?(board, index) == true))
    true
  else
    false
  end
end


def move(board, index, token = 'X')
  board[index] = token

end

def turn(board)
    puts "Please enter 1-9:"
    input = gets.strip
    index = input_to_index(input)
    unless index.between?(0, 8)
      turn(board)
    end
       if (valid_move?(board, index) == true)
        move(board, index)
        display_board(board)
      end
end
