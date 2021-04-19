Horizontal_Divider = "-----------"

def display_board board
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts Horizontal_Divider
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts Horizontal_Divider
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index inp
  inp.to_i - 1

end

def valid_move? board, index
  val = board[index]

  if ((val == "" || val == " " || val == nil) && (index >= 0 && index <= 8))
    return true
  else 
    return false
  end
end

def move board, index, chr = "X"
  board[index] = chr
end

def turn board
  loop do 
    puts "Please enter 1-9:"
  inp = Integer(gets) rescue nil
  index = input_to_index inp
  
  if valid_move? board, index
    move board, index
    display_board board
    break
  end
end
end