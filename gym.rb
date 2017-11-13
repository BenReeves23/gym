# 1. Weightlift Calculator
# 	A gym has hired you to solve a problem. Most of their clients are fairly new to weightlifting, and don’t know what to put on the barbell for a particular weight. The weights they have made available are in 45, 35, 25, 15, 10 and 5 lbs. increments. Build them a Ruby application that will tell them, for a given weight, what plates to put on each side of the bar. Bear in mind that the bar itself weighs 45 lbs.

# 	For example, if they want to load 225 lbs. on the bar, they will need to put two 45 lbs. plates on each side of the bar. 45x4 = 180 lbs. Plus 45 lbs. for the barbell itself equals a total of 225 lbs.	
def menu
	puts "How much weight do you want on your bar (Ending in 5 please)?"
	total = gets.chomp.to_i
	sin_bar = (total - 45)
	@side1 = (sin_bar / 2)

	if sin_bar % 10 == 0
		math
	else

		menu
	end 
end
def math
	@plates = []

	while @side1 > 0
	
		if (@side1 - 45) >= 0
			@plates.push(45)
			@side1 -= 45
		elsif (@side1 - 35) >= 0
			@plates.push(35)
			@side1 -= 35
		elsif (@side1 - 25) >= 0
			@plates.push(25)
			@side1 -= 25 
		elsif (@side1 - 10) >= 0
			@plates.push(10)
			@side1 -= 10
		elsif (@side1 - 5) >= 0
			@plates.push(5)
			@side1 -= 5
		end	
	end
	puts "You will need #{@plates.length} plates on each side, consisting of #{@plates}lbs."
	menu
end

menu