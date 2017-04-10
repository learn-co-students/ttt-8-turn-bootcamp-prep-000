def display_board(board)
  puts(" #{board[0]} | #{board[1]} | #{board[2]} ")
  puts("-----------")
  puts(" #{board[3]} | #{board[4]} | #{board[5]} ")
  puts("-----------")
  puts(" #{board[6]} | #{board[7]} | #{board[8]} ")
end

def input_to_index(user_input)
  user_input = (user_input.to_i) -1
end

def valid_move?(board,index)
  return (index<board.length && index>=0 && !position_taken?(board,index))
end

def position_taken?(board,index)
  return board[index]=="O" || board[index]=="X"
end

def move(board,index, player_symbol="X")
  if valid_move?(board,index)
    board[index]=player_symbol
  else
    puts "Hey! Don't do that!"
    turn(board)
  end
end

def turn(board)
  puts("Please enter 1-9:")
  input = gets.strip
  index = input_to_index(input)
  move(board,index)
  display_board(board)

end
