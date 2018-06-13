# code your #valid_move? method here
def valid_move?(board, index)
  if index > board.length || index < 0
    false
  else
    !position_taken?(board, index)
  end
end

#Check to see if positions are taken...
def position_taken?(board, index)
  if board[index] == "" || board[index] == " "
    false
  elsif board[index].nil?
    false
  elsif board[index] == "O" || board[index] == "X"
    true
  end
end

# Convert input to index
def input_to_index(user_input)
  user_input.to_i - 1
end

# Move somewhere
def move(board, board_index, character = "X")
  board[board_index] = character
end

# Generate the board
def display_board(board, board_array = [])
  e = 0
  3.times do |i|
  board_array << " #{board[e]} | #{board[e+1]} | #{board[e+2]} "
    if i/2 == 0
      board_array << "-----------\n"
    end
  e += 3  
  end
  board_array.each do |x|
    puts x
  end
end

def turn(board)
  puts 'Please enter 1-9:'
  input = input_to_index gets.strip
  if valid_move? board, input
    move(board, input)
    display_board(board)
  else
    puts "invalid"
    turn(board)
  end
end