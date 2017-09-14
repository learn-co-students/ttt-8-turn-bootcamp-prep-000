def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

space = 0
def input_to_index(play)
  space = play.to_i - 1
end

def update_array_at_with(array, space, value = "X")
  array[space] = value
end

token = ['X','O']
counter = 3

def move(board, play, counter ='X')
update_array_at_with(board, play, counter)
end

def valid_move?(board, index)
  if (index>8)
    return nil
  elsif (index<0)
    return nil
  else
    if (position_taken?(board, index)==false)
      return true
    else
      return nil
    end
  end
end
# code your #valid_move? method here


def position_taken?(board, index)
  if (board[index] == ' ' || board[index] == '' || board[index] == nil)
    return false
  else
    return true
  end
end

def turn(board)
  puts "Please enter 1-9:"
  play = gets.strip
  index = input_to_index(play)
  if (valid_move?(board, index) ==  true)
    move(board,index,"X")
    return display_board(board)
  else
    puts "That is an invalid move."
    play = gets.strip
    index = input_to_index(play)
    return nil
  end
end
