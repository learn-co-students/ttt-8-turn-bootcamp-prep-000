def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end


def valid_move?(board, index)
    index.between?(0,8) &&  !position_taken?(board,index)
end
def position_taken?(board, index)

  (board[index] ==  " " || board[index] == "" || board[index] == nil) ?
    false : true
end



def input_to_index(input)
  return  (input.to_i)-1
end

def move(board, index, value ="X")
  return board[index] = value
end

def turn(board)
  loop do
    puts "Please enter 1-9:"
    input = gets.chop
    if valid_move?(board,input_to_index(input))
      move(board, input_to_index(input), value = "X")
    else
      puts "Please enter 1-9:"
    end
  end
end
