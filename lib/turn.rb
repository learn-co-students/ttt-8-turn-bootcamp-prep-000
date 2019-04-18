CHR_EMPTY = ' '
CHR_SEPAR_HOR = '-'
CHR_SEPAR_VER = '|'
COLS = 3
ROWS = 3
CELLS = COLS*ROWS

def display_board(board)
  r = 1
  c = 0
  board.each_with_index do |cell, i|
    c += 1
    if i % 3 == 0
      if r.between?(2, COLS)
        puts CHR_EMPTY
        ((COLS * 3)+COLS-1).times {|| print CHR_SEPAR_HOR}
      end
      puts ''
      r += 1
      c = 0
    else
      print CHR_SEPAR_VER
    end
    print CHR_EMPTY + cell + CHR_EMPTY
    puts '' if i == board.size-1
  end
  puts ''
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index)
    move(board, index, 'X')
    display_board(board)
  else
    turn(board)
  end
end

def valid_move?(board, move)
  move.between?(0, CELLS-1) && board[move].strip.empty?
end

def move(board, index, player)
  board[index] = player
end

def input_to_index(str)
  str.to_i-1
end