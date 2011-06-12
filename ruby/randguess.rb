puts "Moin"
secret = rand(10)
guess = -1
until guess.to_i == secret do
	puts "guess"
	guess = gets

	if guess.to_i == secret 
		# one fine day everyone will use the same character encoding 
		# everywhere and Umlauts won't be an issue. Meh. 
		puts "glückwunsch"
	else 
		puts "pech #{secret}"
	end
end
