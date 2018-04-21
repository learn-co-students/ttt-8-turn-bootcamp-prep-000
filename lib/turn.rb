#display_board method which will diplay on the screen
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
# turn method
def turn(board)
  puts "Please enter 1-9:"
  input = gets.chomp
  index= input_to_index(input)
  if valid_move?(board,index)
    move(board, index ,value="X")
    display_board(board)
  else
    puts " INVALID MOVE "
    turn(board)
  end

end

#input_to_index converts user input to correct array index
def input_to_index(input)
 index = input.to_i - 1
end

# valid move method which validates a move input by the user
def valid_move?(board,index)
 (!position_taken?(board,index) && index.between?(0,8))? true:false
end
# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def move(board, index ,value="X")
board[index]=value
end

def position_taken?(board ,index)
 (board[index] == " " || board[index] == "" || board[index] == nil ) ? false : true
end
