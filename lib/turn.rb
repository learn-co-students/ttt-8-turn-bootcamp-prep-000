
def turn(board)

  # ask for input
  puts "Please enter 1-9:"
  # get input
  input = gets.strip
  # convert input to index
  index = input_to_index(input)
    # puts index
  # ask for input again until you get a valid input
  until (valid_move?(board,index) && -1 < index && index<10)
    # ask for input
    puts "Please enter 1-9:"
    # get input
    input = gets.strip
    # convert input to index
    index = input_to_index(input)
  end
  # make the move for index
  move(board, index, char = "X")
  # show the board
  display_board(board)

end



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

def move(board, position, char = "X")
  board[position] = char
end

def valid_move?(board,index)
    if board[index]==nil || position_taken?(board,index) || index < 0
      return false
    end
    if !position_taken?(board,index)
       return true
    end
end

def position_taken?(board,index)
  if (board[index] == "X" || board[index] == "O" )
    return true
  end
  return false
end



# # tests:
# board = [" ", " ", " ", " ", "X", " ", " ", " ", " "]
# index = 0
# puts index
# puts valid_move?(board,index)
# index = 4
# puts index
# puts valid_move?(board,index)
# index = -1
# puts index
# puts board[index]
# puts valid_move?(board,index)
#
#
# bob = ["man", "dog", "bear"]
# puts bob[-1]
