def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)


  until valid_move?(board,index) == true
    puts "Invalid move. Please enter 1-9:"
    input = gets.strip
    index = input_to_index(input)
  end


move(board,index)



display_board(board)


end




def move(board,index,character = "X")
  board[index]= character
end


def valid_move?(board,index)
puts "valid move"
  if index > 8 || index < 0 || position_empty(board,index) == nil

    return false

  end

if position_empty(board,index) == true && index > -1 && index < 9
  return true
end



end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end


def position_empty(board,index)

if board[index] == " " || board[index] == "" || board[index] == "  "
  return true
end

if board[index] == "X" || board[index] == "O" || board[index] == "o" || board[index] == "x"
  return nil
end

end


def input_to_index(user_input)

  index = user_input.to_i
  index = index - 1
  return index

end
