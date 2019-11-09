input = gets.chomp.split
a = input.at(0).to_i
b = input.at(1).to_i

def gcd(number_a, number_b)

	while number_a != number_b
		if number_a > number_b
			number_a = number_a - number_b
		else
			number_b = number_b - number_a
		end
	end
	puts number_a
end

gcd(a, b)