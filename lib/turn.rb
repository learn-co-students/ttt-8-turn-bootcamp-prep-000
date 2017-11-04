def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(a)
  (a.to_i) - 1
end

def valid_move?(a, b)
  if b>9 || b<0
    false
  else
    if position_taken?(a, b)
      false
    else
      true
    end
  end
end

def move(array, index, value="X")
  array[index]=value
end

def position_taken?(a, b)
  if a[b] === " "
    false
  elsif a[b] === ""
    false
  elsif a[b] === nil
    false
  elsif a[b] === "O" || a[b] === "X"
    true
  end
end

def turn(a)
  puts "Please enter 1-9:"
  input = gets.strip
  b = input_to_index(input)
  if valid_move?(a, b)
    move(a, b, value="X")
    display_board(a)
  else
    turn(a)
  end
end
