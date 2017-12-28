def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  place = input_to_index(input)
    if valid_move?(board, place)
        move(board, place)
    elsif !valid_move?(board, place)
        turn(board)
    end
        return display_board(board)

 end



def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your input_to_index and move method here!
def input_to_index(input)
  input.to_i - 1
end

def move (board, index, character = "X")
  board[index] = character
end


def valid_move?(array, index)
  if !position_taken?(array, index) && checkSpace(index)
    return true
  else
    return false
  end
end


# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(array, index)

  if array[index] == " "
    return false

  elsif array[index] ==  ""
    return false

  elsif array[index] == nil
    return false

  elsif array[index] == "X" || "O"
    return true

  end
end

def checkSpace(index)
  if index == 0
    return true
  elsif index == 1
    return true
  elsif index == 2
    return true
  elsif index == 3
    return true
  elsif index == 4
    return true
  elsif index == 5
    return true
  elsif index == 6
    return true
  elsif index == 7
    return true
  elsif index == 8
    return true
  else
    return false
  end
end
