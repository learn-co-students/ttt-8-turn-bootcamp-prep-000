def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your input_to_index and move method here!
def input_to_index(index)
   if index.is_a? String
       index = index.to_i
   end
   index = index - 1
end

def move(board, position, char="X")
    board[position] = char
end


def position_taken?(board,index)
  #if board[index].strip.empty? || !board[index].nil?
  if board[index].nil? || board[index].strip.empty?
    false
  else true
  end
end

# code your #valid_move? method here
def valid_move?(board, index)
  if !position_taken?(board, index) && index.between?(0,8)
    true
  else
    false
  end
end


def position_taken?(board,index)
  #if board[index].strip.empty? || !board[index].nil?
  if board[index].nil? || board[index].strip.empty?
    false
  else true
  end
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets
  index = input_to_index(input)
  if valid_move?(board, index)
    move(board,index)
    display_board(board)
  else
    turn(board)
  end
end
