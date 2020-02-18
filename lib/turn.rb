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
        #input = gets.chomp.strip
        #do puts display_board
        
        
def valid_move? (board, index)
        if index.between?(0, 8) && !position_taken?(board, index)
                true 
        end   
end
        
def turn(board)
            puts "Please enter 1-9:"
            input = gets.chomp.strip
            data = input_to_index(input)
            if valid_move?(board, data)
            move(board, data)
            display_board(board)
            else
            turn(board)  
            end
        end

            #turn(board,index)
    #     move(array,index,value = "X")
    #     display_board(board)
    # else
    #     turn(board)
    # end



    # get input
    # convert input to index
    # if index is valid
    # make the move for input
    # else
    #   ask for input again until you get a valid input
    # end
        
def position_taken?(board,index)
            foo = nil
    if (board[index] == "" || board[index] == " " || board[index] == nil)
        foo = false
    else 
        foo = true
    end
        foo
end
        
def move(board,index,value = "X")
    board[index] = value
end
        



    
            