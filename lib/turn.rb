

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  index = user_input.to_i - 1
end

def valid_move?(board, index)
 index.between?(0,8) && !position_taken?(board, index)
end

def position_taken?(board, index)
  if board[index] == "" || board[index] == " " || board[index] == nil
    false
  elsif board[index] == "X" || board[index] == "O"
    true
  end
end

def move(board, index, token = "X")
  board[index] = token
end

def turn(board)
  puts "Please enter 1-9:"
  #grab input
  input = gets.strip
  # use input_to_index method to change the inputted number to an index number

  index = input_to_index(input)

  # if the move is valid using the valid_move? method
  if valid_move?(board, index)
    #make the move using the 'move' method defined above
    move(board, index)
    #then display the updated board
    display_board(board)
  else
    # if move is not valid or number inputted is not vaild, ask the question again
    turn(board)
  end
end
