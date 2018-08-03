token = ["X", "O"]
player_number = 0

def display_board(array)
  puts " #{array[0]} | #{array[1]} | #{array[2]} "
  puts "-----------"
  puts " #{array[3]} | #{array[4]} | #{array[5]} "
  puts "-----------"
  puts " #{array[6]} | #{array[7]} | #{array[8]} "
end

def valid_move?(array, index)
  !position_taken?(array, index) && index.between?(0,8)
end

def position_taken?(array, index)
  array[index] == "X" || array[index] == "O"
end

def input_to_index(input)
  input.to_i(10) - 1
end

def three_in_row_diagonal?(array, index)
  if (index % 4 == 0)
    (array[0] == array[4] && array[0] == array[8])
  elsif (index % 2 == 0)
    (array[6] == array[4] && array[6] == array[2])
  end
end

def three_in_row_vertical?(array, index)
  column = index % 3
  array[column] == array[column + 3] && array[column] == array[column + 6]
end

def three_in_row_horizontal?(array, index)
  row = index - index % 3
  array[row] == array[row + 1] && array[row] == array[row + 2]
end

def move(array, index, marker = "X")
  array[index] = marker
end

def check_win(array, index)
  three_in_row_horizontal?(array, index) || three_in_row_vertical?(array, index) || three_in_row_diagonal?(array, index)
end

def turn(array)
  puts "Please enter 1-9:"
  choice = input_to_index(gets.strip)
  if (!choice) || (!valid_move?(array, choice))
    turn(array)
  else
    token = "X"
    move(array, choice, token)
    display_board(array)
    if (check_win(array, choice))
      puts "Player #{token} wins!"
    end
  end
end