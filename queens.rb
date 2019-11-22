num_queens = gets.chomp.to_i

@board = Array.new(70) {Array.new(70, 0)}
#@board = @board.map(&:to_i)

num_queens.times do
    queen_xy = gets.chomp.split
    queen_xy = queen_xy.map(&:to_i)
    queen_x = queen_xy.at(0)
    queen_y = queen_xy.at(1)
    @board[queen_x][queen_y] = 1

end


70.times do |x_coordinate|
    sum_check = 0
    70.times do |y_coordinate|
        sum_check = sum_check + @board[x_coordinate][y_coordinate]
        if sum_check >= 2
            puts "INCORRECT"
            exit!
        end
    end
end

puts "CORRECT"


