

  board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
  def display_board(array)
    puts  "#{array[0]} | #{array[1]} | #{array[2]}"
    puts "------------"
    puts  "#{array[3]} | #{array[4]} | #{array[5]}"
    puts "------------"
    puts  "#{array[6]} | #{array[7]} | #{array[8]}"
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
      display_board(array)
    else
      turn(array)
    end

end
