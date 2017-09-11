def display_board(board)

    puts " #{board[0]} | #{board[1]} | #{board[2]} "
    puts "-----------"
    puts " #{board[3]} | #{board[4]} | #{board[5]} "
    puts "-----------"
    puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(index)

  index.to_i - 1

end


def valid_move?(board, index)

  if index.between?(0,8) == true && board[index] == " "
    return true
  else
    return false
  end
end

def move(board, index, move = "X")

    board[index] = move
end

def turn(board)

  puts "Please enter 1-9:"

  uinput = gets.chomp

  input = input_to_index(uinput)

  until valid_move?(board, input) == true
    puts "invalid move try again"
    uinput = gets.chomp
    input = input_to_index(uinput)
  end

  move(board,input)

  display_board(board)

end
