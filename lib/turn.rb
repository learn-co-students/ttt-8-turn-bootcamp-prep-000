def display_board(board) print " #{board[0]} | #{board[1]} | #{board[2]} \n-----------\n #{board[3]} | #{board[4]} | #{board[5]} \n-----------\n #{board[6]} | #{board[7]} | #{board[8]} \n\n"; end
def valid_move?(board, pos) pos.between?(0, 8) && board[pos] != "X" && board[pos] != "O"; end
def input_to_index(input) input.to_i - 1; end
def move(board, pos, mark = "X") ; board[pos] = mark; end

WINNING_COMBINATIONS = {
  :top_row     => [0, 1, 2],
  :middle_row  => [3, 4, 5],
  :bottom_row  => [6, 7, 8],
  :left_side   => [0, 3, 6],
  :middle_col  => [1, 4, 7],
  :right_side  => [2, 5, 8],
  :fwd_slash   => [6, 4, 2],
  :backslash   => [0, 4, 8]
}

def winner?(board)
  if $turn_counter >= 9
    puts "Cats game!\n\n"
    $game_over = true
  else
    unless $game_over == true
      WINNING_COMBINATIONS.each_value do |w| 
        # if [board[w[0]], board[w[1]], board[w[2]], "X"].uniq.length == 1
        if board[w[0]] == board[w[1]] && board[w[0]] == board[w[2]] && board[w[0]] ==  "X"
          puts "X wins!\n\n"
          $game_over = true
        # elsif [board[w[0]], board[w[1]], board[w[2]], "O"].uniq.length == 1
        elsif board[w[0]] == board[w[1]] && board[w[0]] == board[w[2]] && board[w[0]] ==  "O"
          puts "O wins!\n\n"
          $game_over = true
        end
      end
    end
  end
end

def turn(board)
  $turn_counter ||= 1
  $game_over ||= false
  until $game_over == true
    puts "Please enter 1-9:"
    index = input_to_index(gets.strip)
    if valid_move?(board,index)
      ($turn_counter + 1) % 2 == 0 ? move(board,index,"X") : move(board,index,"O")
      display_board(board)
      winner?(board)
      $turn_counter += 1
    else
      puts "I'm afraid I can't let you do that."
      display_board(board)
    end
  end
end