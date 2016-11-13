def turn(board)
    puts "Please enter 1-9:"
    input = gets.strip
    index = input_to_index(input)
    if valid_move?(board, index) == true
      move(board, index)
    else
      turn(board)
    end


  display_board(board)
end

def display_board(input=[" ", " "," "," "," "," "," "," "," "])
  puts " #{input[0]}" + " | " + "#{input[1]}" + " | " + "#{input[2]} "
  puts "-----------"
  puts " #{input[3]}" + " | " + "#{input[4]}" + " | " + "#{input[5]} "
  puts "-----------"
  puts " #{input[6]}" + " | " + "#{input[7]}" + " | " + "#{input[8]} "
end

def valid_move?(board, index)
  if index <= 8 && index >= 0
    if position_taken?(board, index)
    return false
    end
    return true
  end
  false
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
# code your #position_taken? method here!
def position_taken?(board, index)
  if board[index] == "" || board[index] == " " || board[index] == nil
    return false
  end
  true
end

def input_to_index(input)
  input = input.to_i - 1
end

def move(board, index, char="X")
  board[index] = char
end
