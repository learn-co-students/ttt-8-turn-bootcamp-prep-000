def display_board(board)
  puts (" #{board[0]} | #{board[1]} | #{board[2]} ")
  puts ("-----------")
  puts (" #{board[3]} | #{board[4]} | #{board[5]} ")
  puts ("-----------")
  puts (" #{board[6]} | #{board[7]} | #{board[8]} ")
end

def valid_move? (board, position)
  if position.between?(0,8) && !(position_taken?(board,position))
    return true
  else
    return false
  end
end

def position_taken?(board, position)
  return !(board[position] == nil || board[position] == "" || board[position] == " " || board[position] == "  " || board[position] == "   ")
end

def input_to_index(input)
  return (input.to_i - 1)
end

def move(board, position, player = "X")
    board[position] = player
end

def turn(board)
  valid = false
  until valid
    puts "Please enter 1-9:"
    choice = gets.strip
    choice = input_to_index(choice)
    if valid_move?(board, choice)
      valid = true
    end
  end

    move(board, choice)
    display_board(board)

end
