def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
def move(board, position, sign = "X")
  board[position] = sign
end
def input_to_index(input)
  return (input.to_i - 1)
  
end
def position_taken?(board, index)
  b = board[index]
  if (b == "O")||(b == "X")
    return TRUE
  else
    return FALSE
  end
end
def valid_move?(game, pos)
  if (pos >= 0) && (pos < 8) && !(position_taken?(game, pos))
    return TRUE
  else 
    return FALSE
  end
end
def turn(board)
  a=0
  until a == 1
    puts "Please enter 1-9:"
    b=gets.strip
    c=input_to_index(b)
    if valid_move?(board, c)
      move(board, c)
      display_board(board)
      a=1
    end
  end
end