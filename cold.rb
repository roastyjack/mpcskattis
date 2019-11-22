count = gets.chomp.to_i
values = gets.chomp.split

values = values.map(&:to_i)

output = 0

values.each do |value|
    if value < 0
        output = output + 1
    end
end

puts output