# display the game board to reflect each position of the arary
def display_board (board)
  puts " #{board[0]} " + "|" + " #{board[1]} " + "|" + " #{board[2]} "
  puts "-----------"
  puts " #{board[3]} " + "|" + " #{board[4]} " + "|" + " #{board[5]} "
  puts "-----------"
  puts " #{board[6]} " + "|" + " #{board[7]} " + "|" + " #{board[8]} "
end 

# takes user input and converts to integer 
def input_to_index (input)
  # assign "index" to the value of "input" after converting to integer and subtracting 1
  return index = input.to_i - 1 
end

# use position_taken to check for blank index (false) or filled (true)
def position_taken?(board, index)
  # if board[index].nil?'s reverse OR board[index] is blank
  !(board[index].nil? || board[index] == " ")
end

# see if it's a valid move
def valid_move?(board,index)
  if (!position_taken?(board,index) && index.between?(0,8))
    return true
  else
    return false
  end
end

# Move method 
def move(board, index, token = "X")
  board[index] = token 
end

# Turn method 
def turn(board)
  puts "Please enter 1-9:"
    input = gets.strip
    index = input_to_index(input)
    user_move = valid_move?(board, index)
  if user_move == true
    move(board, index, token = "X")
    display_board(board)
  else user_move == nil
    puts "Sorry, that was an invalid move. Please enter 1-9:"
    display_board(board)
    input = gets.strip
    index = input_to_index(input)
    user_move = valid_move?(board, index)
  end
end

