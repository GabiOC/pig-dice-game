player_1, player_2 = "Player 1", "Player 2"
player_1_score = 0
player_2_score = 0
current_player = player_1


puts "Welcome to Pig. First to 100 points wins. If you get a 1, you lose."

loop do
	roll = rand(1..6)
	abort("#{current_player} rolled a 1. #{current_player} loses!") if roll == 1

	if current_player == player_1
		player_1_score += roll

		if player_1_score >= 100
			abort("Congrats #{current_player}, you win!")
		else
			puts "You rolled a #{roll}, #{current_player}. Your current score is #{player_1_score}."
		end
		
		puts "Would you like to hold? Enter y or n"
		answer = gets.chomp.downcase
		if answer == "y"
			current_player = player_2
		end
	end

	if current_player == player_2
		player_2_score += roll
		if player_2_score >= 100
			abort("Congrats #{current_player}, you win!")
		else
			puts "You rolled a #{roll}, #{current_player}. Your current score is #{player_2_score}."
		end
		
		puts "Would you like to hold? Enter y or n"
		answer = gets.chomp.downcase
		if answer == "y"
			player_2_score += roll
			current_player = player_1
		end
	end
end