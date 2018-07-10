#turn method 
def turn(board)
  until valid_move?
    puts "Please enter 1-9:"
    input = gets.chomp
    input = input_to_index(input)
    if valid_move?(board, idx)
      move(board, input, "X")
      display_board(board)
    end
  end
end


#helper methods
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end 

def valid_move?(board, idx)
  if (idx.to_i.between?(0, 8)) && (board[idx] == " ")
    return true 
  else
    return false
  end
end

def move(board, idx, token="X")
  board[idx] = token
end

def input_to_index(user_input)
  a = user_input.to_i - 1
  a.to_s
end
