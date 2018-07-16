def display_board(array)
  puts " #{array[0]} | #{array[1]} | #{array[2]} "
  puts "-----------"
  puts " #{array[3]} | #{array[4]} | #{array[5]} "
  puts "-----------"
  puts " #{array[6]} | #{array[7]} | #{array[8]} "
end

def input_to_index(input)
  return input.to_i - 1
end

def valid_move?(board, index)
  if index >= 0 && index <= 8
    if board[index] == " " || board[index] == "" || board[index] == nil
      true
    elsif board[index] == "X" || board[index] == "O"
      false
    end
  else
    false
  end
end

def move(board, index, player = "X")
  return board[index] = player
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.chomp
  index = input_to_index(input)
  
  if valid_move?(board, index)
    move(board, index, player = "X")
    display_board(board)
  else
    puts "Please enter a valid move"
    turn(board)
  end
end