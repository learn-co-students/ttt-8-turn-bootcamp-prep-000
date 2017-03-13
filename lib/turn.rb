def display_board(arr)
  for i in 0..2
    puts " #{arr[3*i]} | #{arr[3*i+1]} | #{arr[3*i+2]} "
    puts "-----------" if i!=2
  end
end

def input_to_index(user_input)
  return user_input.to_i - 1
end

def valid_move? (arr,index)
  return (index>=0 && index <=8 && !position_taken?(arr,index))
end

def position_taken?(arr,index)
  if (arr[index]=="" ||arr[index]==" " || arr[index]==nil)
    return false
  end
    return true
end

def move(arr, index, char="X")
  arr[index]=char
end

def turn(arr)
  index=-1
  loop do
    puts "Please enter 1-9:"
    input = gets.strip
    index = input_to_index(input)
    break if valid_move?(arr,index)
  end
  move(arr, index)
  display_board(arr)
end
