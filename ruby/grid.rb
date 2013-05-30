grid = [[0, 0, 0], [0, 0, 0], [0, 0, 0]]


def print_grid(grid)
	grid.each do |x|
		x.each do |y|
			puts y
		end
		puts "\n"
	end
end




print_grid(grid)

