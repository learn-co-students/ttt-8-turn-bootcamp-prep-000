# code your #valid_move? method here


# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)

    if board[index] == " " || board[index] == "" || board[index] == nil
      false
    elsif board[index] == "X" || board[index] == "O"
      true
    end
end



def valid_move?(board, index)


      if position_taken?(board, index) == false && index.between?(0,8)
        true
      end
end

#board = [" "," "," "," "," "," "," "," "," "]

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your input_to_index and move method here!
def input_to_index(user_input)

    user_input.to_i - 1


end

def move(board, index, char = "X")

    board[index] = char


end

def turn(board)

  puts "Please enter 1-9:"
  turn_input = gets.strip.to_i
  if !turn_input.between?(1,9)
    turn(board)
  end
  index = input_to_index(turn_input)
  if valid_move?(board,index)
    move(board,index)
    display_board(board)
  end
end
