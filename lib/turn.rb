def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  return input.to_i - 1
end

#def valid_move?(board, index)
# if index <= 8 && board[index] == " " 
#   return true
# else 
#   return false
# end
#end
def position_taken?(board, index)
  if  board[index] == "" || board[index] == " " || board[index] == nil
    false
  elsif board[index] != "" || board[index] != " "
    true
  end
end

def valid_move?(board, index)
 if index <= 8 && (board[index] == " " || board[index] == "" || board[index] == nil)
   return true
   elsif position_taken?(board, index)
   return false
   #else 
  # return true
 end
end

#def valid_move?(board, index)
#      if index == nil || index < 0 || index > 8
#       false
#     elsif position_taken?(board, index)
#       false
#     else
#       true
#     end
# end 

def move(board, input, value = 'X')
   board[input] = value
end

#def turn(board)
#  puts "Please enter 1-9:"
#end