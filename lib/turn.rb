# code your #valid_move? method here
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
def input_to_index(user_input)
  index = user_input.to_i
  index -= 1
  return index
end


def valid_move? (board,index)

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(array,index)
if array[index] == " "||array[index]== "" ||array[index]==nil
  return false
else
return true
end
end

def on_board? (num)
  if num_value(0,8)== true
    return true
  else
    return false
  end
end
if (position_taken? (board,index)) == false && (on_board? (index)) == true
  return true
else
  return false
end
end
def move(board, index, character = "x")
  board[index]=character
  return board
end
def turn (board)
  puts "Please enter 1-9:"
  num = gets.chomp
  index = input_to_index(num)
  if valid_move?(board,index) ==true
    move(board,index)
    display_board(board)
  else
    turn(board)
  end
end
