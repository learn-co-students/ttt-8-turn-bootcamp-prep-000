def turn (boardArray)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(boardArray, index)
    move(boardArray, index)
  else
    until valid_move?(boardArray, index)
      puts "Please enter 1-9:"
      input = gets.strip
      index = input_to_index(input)
    end
    move(boardArray, index)
  end
  display_board(boardArray)
end

def display_board(boardArray)
  puts " #{boardArray[0]} | #{boardArray[1]} | #{boardArray[2]} "
  puts "-----------"
  puts " #{boardArray[3]} | #{boardArray[4]} | #{boardArray[5]} "
  puts "-----------"
  puts " #{boardArray[6]} | #{boardArray[7]} | #{boardArray[8]} "
end

def input_to_index (input)
  convertedInput = input.to_i - 1
  return convertedInput
end

def move (boardArray, index, token = "X")
  boardArray[index] = token
end

def position_taken? (boardArray, index)
  if boardArray[index] == " " || boardArray[index] == "" || boardArray[index] == nil
    return false
  else
    return true
  end
end

def valid_move? (boardArray, index)
    if position_taken?(boardArray, index)
      return false
    elsif index.between?(0, 8)
      return true
    else
      return false
    end
end
