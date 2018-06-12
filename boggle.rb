
my_dice = [
["Q", "Q", "Q", "Q", "Q", "Q"],
["E", "L", "R", "T", "T", "Y"], 
["A", "A", "E", "E", "G", "N"],
["E", "L", "R", "T", "T", "Y"],
["A", "A", "E", "E", "G", "N"],
["E", "L", "R", "T", "T", "Y"],
["A", "A", "B", "E", "G", "N"],
["S", "L", "R", "T", "N", "Y"],
["A", "A", "E", "E", "Q", "N"],
["E", "L", "R", "T", "T", "Y"],
["S", "M", "E", "E", "G", "N"],
["E", "L", "R", "T", "T", "Y"],
["A", "S", "E", "E", "G", "N"],
["E", "L", "K", "T", "T", "Y"],
["S", "A", "E", "B", "G", "N"],
["E", "O", "R", "T", "T", "Y"]
]

board = Array.new(16, "-")

length = my_dice.length
dice_length = my_dice[0].length

board.each_with_index do |thing, index|
board[index] = my_dice[index][rand(dice_length)]
end

#here is where we print the boggle bpard
newboard = board.each_slice(4).to_a
newboard.each do |x|
	p x.join(" ")
end


# asking the user for a word, converting to an array, pulling out the unique characters
puts "Give us a word!"
ourword = gets.chomp
word = ourword.upcase.scan /\w/ #this separates the string into an array of characters
board = board.uniq

# here we declare our wincount and winstatus (out of scope of next section)
wincount = 0
win = false

# here we check each letter on the board, and compare ot to our original board (before it was split)
board.each do |letter|
	i = 0
	until i == word.length 
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

#Checks if you are a winner!
if win == true
	p 'YOU ARE A WINNER'
else
	p "YOU LOSE"
end




