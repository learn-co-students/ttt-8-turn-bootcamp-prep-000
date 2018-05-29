def turn(board)
  moved = false
  
  while moved==false
    puts "Please enter 1-9:"
    input = gets.strip()
    index = input_to_index(input)
    #board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
    if valid_move?(board,index)
      move(board,index)
      return display_board(board)
    end
  end
end

def display_board(board)
   
  (0..6).step(3) do |n|
    if (n<6)
      puts " #{board[n]} | #{board[n+1]} | #{board[n+2]} "
      puts "-----------"
    else
      puts " #{board[n]} | #{board[n+1]} | #{board[n+2]} "
    end
    
  end
end

def input_to_index(input)
  return input.to_i - 1
end

def position_taken?(board,index)
  if board[index]=="" || board[index]==" " || board[index]==nil
    return false
  else
    return true
  end
end
    

def valid_move?(board,index)
  if !position_taken?(board,index) && index.between?(0,8)
    return true
  else
    return false
  end
end

def move(board,index,char="X")
  board[index]=char
end

  
#board = ["X", "X", "X", "X", "O", "O", "X", "O", "O"]
#display_board(board)
#input_to_index("2")