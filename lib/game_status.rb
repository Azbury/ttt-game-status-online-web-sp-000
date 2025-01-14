# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]
]

def won?(board)
  WIN_COMBINATIONS.each do |combo|
    if (board[combo[0]] === "X" && board[combo[1]] === "X" && board[combo[2]] === "X") || (board[combo[0]] === "O" && board[combo[1]] === "O" && board[combo[2]] === "O")
      return combo
    end
  end
  false
end

def full?(board)
  board.none?{|i| i === " "}
end

def draw?(board)
  if full?(board) && !won?(board)
    true
  else
    false
  end
end

def over?(board)
  if draw?(board)
    true
  elsif won?(board)
    true
  else
    false
  end
end

def winner(board)
  winning_combo = won?(board)
  if winning_combo === false
    nil
  else
    board[winning_combo[0]]
  end
end
