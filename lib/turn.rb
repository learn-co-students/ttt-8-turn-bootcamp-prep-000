
def get_new_board
    return [" "," "," "," "," "," "," "," "," "]
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(idx)
    return (idx).to_i - 1
end

def move(b, idx, p='X')
    b[idx] = p
    return b
end

def valid_move?(b, idx)
    answ = position_taken?(b, idx)
    if answ == nil || answ == true
        return false
    else
        return true
    end
end

def position_taken?(b, idx)
    if idx >= b.length || idx < 0
        return nil
    elsif b[idx] == "" || b[idx] == nil
        return nil
    elsif b[idx] == " "
        return false
    else
        return true
    end
end

def turn(board)
    valid = false
    while valid == false
        puts "Please enter 1-9:"
        pos = gets.chomp.to_i
        idx = input_to_index(pos)
        if valid_move?(board, idx) == true
            board = move(board, idx, p='X')
            valid = true
        end
    end

    display_board(board)
end
