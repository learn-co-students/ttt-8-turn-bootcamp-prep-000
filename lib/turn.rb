
def display_board(board_arr)
  puts " #{board_arr[0]} | #{board_arr[1]} | #{board_arr[2]} "
  puts "-----------"
  puts " #{board_arr[3]} | #{board_arr[4]} | #{board_arr[5]} "
  puts "-----------"
  puts " #{board_arr[6]} | #{board_arr[7]} | #{board_arr[8]} "
  return board_arr
end

def input_to_index(user_input)
  index = user_input.to_i
  index -= 1
  return index
end

def turn(arr)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)

  if valid_move?(arr, index)
    move(arr, index)
    display_board(arr)
  else
    # puts "invalid move!"
    while !(valid_move?(arr, index))
      puts "Please enter 1-9:"
      input = gets.strip
      index = input_to_index(input)
      # puts index
    end

  return index

  end
end

def move(arr, index, val = "X")
  arr[index] = val
  return arr
end

def position_taken?(arr, index)
  if arr[index] == "X" || arr[index] == "O"
    return true
  else arr[index] == "" || arr[index] == " " || arr[index] == nil
    return false
  end
end

def valid_move?(arr, index)
  if position_taken?(arr, index)
    return false
  elsif index.between?(0, 8)
    return true
  else
    return false
  end
end
