def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end


def input_to_index(input)
  input = input.to_i
  input -= 1
  return input
end

def valid_move?(board, index)
  if (index.between?(0,8) && (!position_taken?(board, index)))
    true
  else
    false
  end
end


def position_taken?(board, index)
  if (board[index] == " " || board[index] == "" || board[index] ==nil)
    false
  else
    true
  end
end

def move(board, index, token = "X")
  board[index] = token
end

def turn(board)
  #move_count = 0
  #until (move_count == 9)
    display_board(board)
    puts "Please enter 1-9:"
    input = gets.strip
    input = input_to_index(input)
    if (valid_move?(board, input) == true)
      move(board, input)
      #move_count += 1
    else
      puts "Invalid Move"
      turn(board)
    end
  #end
  display_board(board)
end
