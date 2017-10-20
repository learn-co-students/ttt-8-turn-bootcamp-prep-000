
def turn(board)

puts "Please enter 1-9:"

index = nil
while index == nil

  index = input_to_index(gets.strip)

  if(!valid_move?(board, index))
    index = nil
    puts "Please enter 1 - 9 for an empty space"
  end
end

move(board,index,"X")

display_board(board)


end



def move(board, position, piece)

    #if valid_move?(board,position)
      board[position] = piece
    #end

end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} \n------------\n #{board[3]} | #{board[4]} | #{board[5]} \n-----------\n #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  if (index.between?(0, 8) && !position_taken?(board,index))
    return true
  end
  return false
end

def position_taken?(board, index)
  pos = board[index]

  if( pos == "" || pos == " " || pos == nil)
    return false
  end
  return true
end

def input_to_index(input)

  input.to_i - 1
end
