def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
    input = input.to_i
    input = input - 1
    return input
end

def move(array, index, char = "X")
  array[index] = char
end

def valid_move?(array, index)
    if !position_taken?(array, index) && index.between?(0,8)
      return true
    else
      return false
  end
end

# code your #valid_move? method here


def position_taken? (array, index)
  if array[index] == "" || array[index] == " " || array[index] == nil
    return false
  else return true
  end
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  input = input_to_index(input)
  if valid_move?(board, input)
    move(board, input)
    display_board(board)
  else
    turn(board)
  end

end
