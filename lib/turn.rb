# program methods

def display_board(board)
    puts " #{board[0]} | #{board[1]} | #{board[2]} "
    puts "-----------"
    puts " #{board[3]} | #{board[4]} | #{board[5]} "
    puts "-----------"
    puts " #{board[6]} | #{board[7]} | #{board[8]} "
end


def input_to_index(input)
    index = input.to_i - 1;
end

def valid_move?(board, index)
    index.between?(0,8) && !position_taken?(board, index)
end

def move(board, index, player = 'X')
    board[index] = player
end

def turn(board)

    # using until loop
    # puts "Please enter 1-9:"
    # input = gets.strip
    # index = input_to_index(input)
    # until valid_move?(board, index)
    #     puts "Please enter 1-9:"
    #     input = gets.strip
    #     index = input_to_index(input)
    # end

    begin
        puts "Please enter 1-9:"
        input = gets.strip
        index = input_to_index(input)
    end while !valid_move?(board, index)

    move(board, index)
    display_board(board)
end


# helper methods - not directly tested
def position_taken?(board, index)
    board[index] == 'X' || board[index] == 'O'
end
