#Converts User input for Use in arrays
def input_to_index(input)
  if (1..9) === input.to_i
    array_Index = input.to_i - 1
    return array_Index
  elsif input.is_a? String
      return -1
  else
    puts "Error, Please enter 1-9:"
    userInput = gets.strip.to_i
    return input_to_index(userInput)
  end
end

# Displays the values of board array 
def display_board(board_current)
  puts " #{board_current[0]} | #{board_current[1]} | #{board_current[2]} "
  puts "-----------"
  puts " #{board_current[3]} | #{board_current[4]} | #{board_current[5]} "
  puts "-----------"
  puts " #{board_current[6]} | #{board_current[7]} | #{board_current[8]} "
end


# Checks if the index is within range of 0-8 and has either O or X
def valid_move?(board, index)
  if (0..8) === index
    if board[index] === "O" || board[index] === "X"
      return false
    else
      return true
    end
  else 
    return false
  end
end

# Checks if the index in the array is occupied
def position_taken?(board, index)
  if board[index] == 'X'
    return "Area is occupied by X"
  elsif board[index] == 'O'
    return "Area is occupied by O"
  elsif board[index] == ' '
    return "Area is free to use"
  else
    return "INVALID"
  end
end

# Place x or o based on input
def move(array, index, token='X')
  return array.map{ |x| array[index] = token}
end

# Asks for input, gets, then converts
def turn(board)
  puts "Please enter 1-9:"
  # Grab User Input 
  userInput = input_to_index(gets)

  if valid_move?(board, userInput)
    return move(board, userInput, token='X'), display_board(board)
  else
    return turn(board)
  end
end


