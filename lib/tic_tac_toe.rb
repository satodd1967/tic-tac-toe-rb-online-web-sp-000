WIN_COMBINATIONS = [[0,1,2], [3,4,5], [6,7,8], [0,3,6], [1,4,7], [2,5,8], [0,4,8], [2,4,6]]

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  converted_input = user_input.to_i - 1
end

def move(board, input, char)
  board[input] = char
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    false
  else
    true
  end
end

def valid_move?(board, index)
  if !index.between?(0, 8)
    false
  elsif position_taken?(board, index) == false
    true
else
    false
  end
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if !valid_move?(board, index)
    turn(board)
  end
    move(board, index, current_player(board))
    display_board(board)
  end

def turn_count(board)
  board.select.count do |count|
    count == "X" || count == "O"
  end
end

def current_player(board)
  if turn_count(board).even? == true
    return "X"
  else
    "O"
  end
end

def won?(board)
WIN_COMBINATIONS.detect do |win_combination|
  (board[win_combination[0]] == "X" && board[win_combination[1]] == "X" && board[win_combination[2]] == "X") || (board[win_combination[0]] == "O" && board[win_combination[1]] == "O" && board[win_combination[2]] == "O")
  end
end

def full?(board)
  board.all? do |position|
    position == "X" || position == "O"
  end
end

def draw?(board)
  !won?(board) && full?(board)
end

def over?(board)
  if won?(board) != nil || draw?(board) == true || full?(board) == true
    return true
  else
    false
  end
end

def winner(board)
  if won?(board)
    return board[won?(board)[0]]
  end
end

def play(board)
  if over?(board)
end
turn(board)
end
 

  

   