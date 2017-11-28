board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
def display_board(board)
    print " #{board[0]} ", "|", " #{board[1]} ", "|"
    puts " #{board[2]} "
    puts "-----------"
    print " #{board[3]} ", "|", " #{board[4]} ", "|"
    puts " #{board[5]} "
    puts "-----------"
    print " #{board[6]} ", "|", " #{board[7]} ", "|"
    puts " #{board[8]} "
 end

 def input_to_index(move)
move.to_i - 1

 end

 def move(board, index, symbol = "X")
   board[index] = "#{symbol}"
 end

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    taken = false
  elsif board[index] == "X" || board[index] == "O"
    taken = true
end
end


def valid_move?(board, index)
  if index.between?(0,8) && !position_taken?(board, index)
    return true
end
end

def turn(board)
  puts "Please enter 1-9:"
    userInput = gets.strip
    index = input_to_index(userInput)
    if valid_move?(board, index)
      move(board, index, symbol = "X")
      display_board(board)
    else
      puts "please enter 1-9:"
      input = gets.strip
    end
end
