def display_board(board)
  row0 = board[0..2].join(" | ")
  row1 = board[3..5].join(" | ")
  row2 = board[6..8].join(" | ")
  
  puts " " + row0 + " "
  puts "-----------"
  puts " " + row1 + " "
  puts "-----------"
  puts " " + row2 + " "
end 

def input_to_index(input)
  input.to_i - 1 
end 

def position_taken?(board, index)
  marks = ["X", "O"]
  marks.any? {|mark| board[index] == mark}
end 

def valid_move?(board, index)
  (0..8).include?(index) && !position_taken?(board, index)
end 

def move(board, index, mark="X")
  board[index] = mark 
end 

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip 
  index = input_to_index(input)

  until valid_move?(board, index) == true 
    puts "Try again!"
    input = gets.strip 
    index = input_to_index(input)
  end 
  
  move(board, index)
  display_board(board)

end 