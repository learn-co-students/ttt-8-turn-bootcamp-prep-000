def display_board(board)
  index = 0
  3.times do 
    3.times do 
      print " #{board[index]} "
      index += 1
      if index % 3 > 0
        print "|"
      else
        puts ""
      end
    end
    11.times do
      print "-"
    end
    puts ""
  end
end

def input_to_index(user_input)
  user_input.to_i - 1
end

def valid_move?(board, index)
  index.between?(0, board.length - 1) && !position_taken?(board, index)
end

def position_taken?(board, index)
  board[index] && board[index] != " " && board[index] != ""
end

def move(board, index, token = "X")
  board[index] = token
end

def turn(board)
  loop do
    puts "Please enter 1-9:"
    user_input = gets.strip
    index = input_to_index user_input
    if valid_move?(board, index)
      move(board, index)
      break
    end
  end
  display_board board
end