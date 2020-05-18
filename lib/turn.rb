

  board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
  def display_board(array)
    puts  "#{board[0]} | #{board[1]} | #{board[2]}"
    puts "------------"
    puts  "#{board[3]} | #{board[4]} | #{board[5]}"
    puts "------------"
    puts  "#{board[6]} | #{board[7]} | #{board[8]}"
  end

  def input_to_index(input)
    input.to_i - 1
  end

  def position_taken?(array, index)
     if (array[index] == " ") || (array[index] == "") || (array[index] == nil)
        return false
     else
        return true
     end
  end
  def valid_move?(array, index)
    if index.between?(0, 8) && !position_taken?(array, index)
      return true
    else
      return false
    end
  end
  def move(array, index, token = "X")
    array[index] = token
  end
def turn(array)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
    if valid_move?(array, index)
      move(array, index, token = "X")
    else
      turn(array)
    end
  display_board(array)
end
