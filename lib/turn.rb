  def display_board(board)
    puts " #{board[0]} | #{board[1]} | #{board[2]} "
    puts "-----------"
    puts " #{board[3]} | #{board[4]} | #{board[5]} "
    puts "-----------"
    puts " #{board[6]} | #{board[7]} | #{board[8]} "
  end

  def input_to_index(input)
    input.to_i - 1 
  end

  def move(board,index,char="X") 
    board[index] = char 
  end

  def valid_move?(board,index)
    if index.between?(0,8) && !position_taken?(board,index)
      return true
    else
      return false
    end
  end  

  def position_taken?(board,index)
    if board[index] == " " || board[index] == ""
      return false
    elsif board[index] == "X" || board[index] == "O"
      return true
    else  board[index] == nil
      return false
    end
  end

  def turn(board)
  
    puts "Please enter 1-9:"
    input = gets.chomp
    index = input_to_index(input)
    
      if valid_move?(board,index) == true
        move(board, index, "X")
        display_board(board)
        puts "Please enter 1-9:"
      else 
        turn(board)
    end
  end
