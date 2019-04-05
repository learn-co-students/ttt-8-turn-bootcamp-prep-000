def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board,index)
  if index.between?(0,8)
    content=board[index]
    return !(content=="X" || content=="O")
  end
end

def move(board,index,player="X")
  board[index]=player
end

def input_to_index(input)
  index=input.to_i-1
end

def turn(board)
  loop do
    puts "Please enter 1-9:"
    input=gets.strip
    index=input_to_index(input)
    if valid_move?(board,index)
      move(board,index)
      display_board(board)
      break
    end
  end
end
