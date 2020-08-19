#creating the board
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
#coverting the user input into an index to match the board array
def input_to_index(input)
  interger_user_input = input.to_i
  correction = 1
  corrected_input = interger_user_input - correction
  return index = corrected_input
end

#inputting the move onto the board, X is default for 'player 1'
def move(board,index,token = 'X')
  return board[index] = token
end

#checking that the board position selected is empty

#ensuring the move is valid, that the board position is empty and the number select is between 1 and 9
def valid_move?(board,index)
  def position_taken?(board,index)
    if board[index] == " " || board[index] == "" || board[index] == nil
      false
    else
      true
    end
  end
  if position_taken?(board,index) == false && index.between?(0,8)
    true
  else 
    false
  end
end


def turn(board)
  #counter = 0
  #until counter == 8
    puts "Please enter 1-9:"
    input = gets.strip
    if valid_move?(board,index = input_to_index(input)) == true
      move(board,index,token = 'X')
      display_board(board)
      #counter += 1
    else
      puts"Please try again"
      input = gets.strip
      return input
    end
  #end
end
