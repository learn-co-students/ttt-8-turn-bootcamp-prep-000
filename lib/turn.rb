
def turn(board)
  puts "Please enter 1-9:"
  #get input
  user_input = gets.strip
  #convert input to index
  index = input_to_index(user_input)

    #until valid_move?(board,index)
    #  turn(board)
    #end

    #move(board, index, char = "X")
    #display_board(board)

  #if index is valid
    if valid_move?(board,index)
    #make the move for input
      move(board, index, char = "X")
      display_board(board)
    else
    #ask for input again until you get a valid input
      turn(board)
    end
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your input_to_index and move method here!
def input_to_index(user_input)
    user_input.to_i - 1
end

def move(board, position, char = "X")
  board[position] = char

end

# code your #valid_move? method here
def valid_move?(board,index)

  if position_taken?(board,index) == false && index.between?(0, 8)
     true
  else
    false
  end

end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)

  if board[index] == " " || board[index] == "" || board[index] == nil
     false
  elsif board[index] == "X" || board[index] = "O"
    true
  end

end
