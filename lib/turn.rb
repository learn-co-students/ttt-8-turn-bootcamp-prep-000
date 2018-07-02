def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end


def valid_move?(board, pos)
  return (pos.between?(0,8)&& !position_taken?(board,pos))
end

def position_taken?(board,pos)
  return !(board[pos]==""||board[pos]==" " ||board[pos]==nil)
end

def move(board,pos,xo="X")
 board[(pos)]=xo
end

def input_to_index(pos)
  return pos.to_i-1
end

def turn(board)
  puts "Please enter 1-9:"
  pos=input_to_index(gets.strip)
  if valid_move?(board,pos)
    
  else
    until valid_move?(board,pos)
      puts "Please stop fucking up"
      pos=input_to_index(gets.strip)
        if valid_move?(board,pos)
        end
    end
  end
  move(board,pos,"X")
  display_board(board)

end