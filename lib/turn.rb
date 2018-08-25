def turn

end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-" * 11
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-" * 11
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, pos)
  return true while board[pos] < 9 && position_taken? == false
  return false
end

def position_taken?(board, pos)
  if board[pos] == " "
    return false
  end
  return true
end

def input_to_index(input)
  input.to_i - 1
end

def move(board, pos = gets.chomp, char = "X")
  board[pos] = char
end
