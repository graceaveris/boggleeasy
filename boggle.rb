
#An array of random letters

letters = ('a'..'z').to_a
board = ['-','-','-','-','-','-','-','-','-','-','-','-','-','-','-','-']

length = letters.length

board.each_with_index do |thing, index|
	board[index] = letters[rand(length)]
end

newboard = board.each_slice(4).to_a
newboard.each do |x|
	p x 
end
