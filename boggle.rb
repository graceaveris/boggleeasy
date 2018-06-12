
#An array of random letters

my_dice = [
["Qu", "Qu", "Qu", "Qu", "Qu", "Qu"], #dice 0
["E", "L", "R", "T", "T", "Y"], #dice 1 etc...
["A", "A", "E", "E", "G", "N"],
["E", "L", "R", "T", "T", "Y"],
["A", "A", "E", "E", "G", "N"],
["E", "L", "R", "T", "T", "Y"],
["A", "A", "B", "E", "G", "N"],
["S", "L", "R", "T", "N", "Y"],
["A", "A", "E", "E", "Qu", "N"],
["E", "L", "R", "T", "T", "Y"],
["S", "M", "E", "E", "G", "N"],
["E", "L", "R", "T", "T", "Y"],
["A", "S", "E", "E", "G", "N"],
["E", "L", "K", "T", "T", "Y"],
["S", "A", "E", "B", "G", "N"],
["E", "O", "R", "T", "T", "Y"]
]

board = ['-','-','-','-','-','-','-','-','-','-','-','-','-','-','-','-']

length = my_dice.length
dice_length = my_dice[0].length

board.each_with_index do |thing, index|
	board[index] = my_dice[index][rand(dice_length)] # in this area, we need to access each dcue one after another
end

newboard = board.each_slice(4).to_a
newboard.each do |x|
	p x
end

# rand(length)

