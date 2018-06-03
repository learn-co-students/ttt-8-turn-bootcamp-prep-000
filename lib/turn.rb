def display_board(board)
  rows = (0..8).step(3).collect{|i| (i..i+2).collect{|x| " #{board[x]} "}.join("|")}
  div = "\n" + "-"*11 + "\n"
  puts rows.join(div)
end

def input_to_index(pos)
  pos.to_i - 1
end

def valid_move?(board, pos)
  pos.between?(0, 8) and [" ", "", nil].include?(board[pos])
end

def move(board, pos, marker="X")
  board[pos] = marker
end

def turn(board)
  valid_go = FALSE
  
  until valid_go do
    puts "Please enter 1-9:"
    input = gets.strip
    pos = input_to_index(input)
    valid_go = valid_move?(board, pos)
  end
  
  move(board, pos)
  display_board(board)
end