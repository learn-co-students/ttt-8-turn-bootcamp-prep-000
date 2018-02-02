
def valid_move?(board, index)
    if index < 0 or index > 8
        puts 'Must be between 1 and 9!'
        false
    elsif board[index] != " "
        puts 'Spot already taken!'
        false
    else
        true
    end
end

def move(board, index, token)
    board[index] = token
    board
end

def input_to_index(index)
    index.to_i - 1
end

def display_board(board)
    for x in (0...board.length)
        if x == 0
            puts ''
        elsif x % 3 == 0
            puts "\n -----------"
        else
            print '|'
        end
        print " #{board[x]} "
    end
    puts ''
end

def turn(board)
    puts 'Please enter 1-9:'
    index = input_to_index(gets.chomp)
    while not valid_move?(board, index)
        index = input_to_index(gets.chomp)
    end
    board = move(board, index, 'X')
    display_board(board)
end


