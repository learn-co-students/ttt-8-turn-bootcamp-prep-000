def display_board (board)
    puts " #{board[0]} | #{board[1]} | #{board[2]} "
    puts "-----------"
    puts " #{board[3]} | #{board[4]} | #{board[5]} "
    puts "-----------"
    puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index (inp)
    inp.to_i - 1
end

def valid_move? (board, pos)
    if pos >= 0 && pos <= 9
        if board[pos] == " " ||  board[pos] == ''
            return true
        end
        return false
    end
    false
end

def move (board, pos, sym = "X")
    if valid_move?(board, pos)
        board[pos] = sym
        return true
    end
    false
end

def turn (board)
    puts "Please enter 1-9:"
    inp = gets.chomp
    inp = input_to_index(inp)
    if !move(board, inp)
        turn(board)
    else
        display_board(board)
    end
end
