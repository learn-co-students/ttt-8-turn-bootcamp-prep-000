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
  if index.between?(0, 8)
    if board[index] == " " || board[index] == "" || board[index] == nil
      true
    else
      false
    end
  else
    false
  end
end

def move(board, index, player = "X")
  if valid_move?(board, index)
    board[index] = player
    true
  else
    false
  end
end

def turn(board)
  isValidated = false

  until isValidated do
    puts "Please enter 1-9:"
    input = gets
    index = input_to_index(input)
    isValidated = move(board, index)
  end



  display_board(board)
end
