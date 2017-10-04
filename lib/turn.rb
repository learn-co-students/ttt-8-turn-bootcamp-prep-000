def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
    if valid_move?(board, index)
      move(board, index, token="X")
      display_board(board)
    else
      turn(board) # this is called recursion!
    end
    #   until valid_move?(board, index)
    #     input = gets.strip
    #     break
    #   end
    # end
    # display_board(board)
end

#define helper methods below
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  input.to_i - 1
end

def valid_move?(board, index)
  !position_taken?(board, index) && index.between?(0, 8)
end

def position_taken?(board, index)
  board[index] != " "
end

def move(board, index, token="X")
  board[index] = token
end
