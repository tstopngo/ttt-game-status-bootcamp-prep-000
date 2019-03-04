# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant

WIN_COMBINATIONS = [[0,1,2], [3,4,5], [6,7,8], [0,3,6], [1,4,7], [2,5,8], [0,4,8], [2,4,6]]

def won?(board)
winner = []
empty_board = board.all? {|position| position == " "}
WIN_COMBINATIONS.each do |win_combo|
    if empty_board || full?(board)
      return false
    elsif win_combo.all? { |index| board[index] =="X" } || win_combo.all? { |index| board[index] =="O" }
      winner = win_combo
    end
  end
  winner
end

def full?(board)
  !board.any? { |position| position == " " }
end

def draw?(board)
  if won?(board) != false && full?(board)
    return true
  end
end
