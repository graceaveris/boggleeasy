
#An array of random letters

my_dice = [
["Q", "Q", "Q", "Q", "Q", "Q"], #dice 0
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


# we need to ask the user for a word, and then check it against 'board'
puts "Give us a word!"
ourword = gets.chomp


word = ourword.upcase.scan /\w/

board = board.uniq

# p board
wincount = 0
win = false

board.each do |letter|#this takes each item from our bord array, and passes it as 'cube'
    i = 0#sets the counter at 0
	until i == word.length 
	# p letter#until i = the word lenngth (which is 3)
		if letter == word[i]
		    wincount += 1
			    if wincount == word.length
			    win = true
			else
			end
		end
		i += 1
	end
end
if win == true
	p 'YOU ARE A WINNER'
else
	p "YOU LOSE"
end
 # p "Better luck next time..."



