def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.chomp
  index = input_to_index(user_input)
  if valid_move?(board, index) == true
    move(board, index)
    display_board(board)
  elsif valid_move?(board, index) == false
    turn(board)
  end
end

def move(array, index, value = "X")
   array[index] = value
end

def valid_move?(board, index)
    if index >= 0 && index <= 8
      test1 = true
    else test1 = false
    end
    def position_taken?(board, index)
      if board[index] == "" || board[index]== " " || board[index] == nil
        return false
      else return true
      end
    end
    if test1 == true && position_taken?(board, index) == false    # code your #valid_move? method here
        return true
    else return false
    end
  end

def input_to_index(input)
    input = input.to_i - 1
end


def display_board(board)
  puts " #{board[0]} " + "|" + " #{board[1]} " + "|" +" #{board[2]} "
  puts "-----------"
  puts " #{board[3]} " + "|" + " #{board[4]} " + "|" +" #{board[5]} "
  puts "-----------"
  puts " #{board[6]} " + "|" + " #{board[7]} " + "|" +" #{board[8]} "
end
