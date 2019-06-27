require"pry"
def display_board(board)
    puts " #{board[0]} | #{board[1]} | #{board[2]} "
    puts '-----------'
    puts " #{board[3]} | #{board[4]} | #{board[5]} "
    puts '-----------'
    puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
    index=(user_input.to_i)-1
    index 
end

def valid_move?(board, index)
    if position_taken?(board, index)
        false
    else 
        true
    end
end
    




    def position_taken?(board, index)
        if index>8 || index<0
           true
        elsif board[index]==" "
            false

        else board[index]=="X" || board[index]="O"
            true 
        end
    end

    def move(board, index, token="X")
        board[index]=token
        
    end


    def turn(board)
        puts "Please enter 1-9:"
        user_input=gets.strip
        index=input_to_index(user_input)
        check=valid_move?(board,index)
       
        until check
        puts "Please enter 1-9:"
        user_input=gets.strip
        index=input_to_index(user_input)
        check=valid_move?(board,index)
        end
         board[index]= "X"
        display_board(board)
    end