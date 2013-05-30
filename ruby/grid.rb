grid = [[0, 0, 0], [0, 0, 0], [0, 0, 0]]


def print_grid(grid)
	grid.each do |x|
		x.each do |y|
			puts y
		end
		puts "\n"
	end
end


def calculate_automaton(grid)
	return [[1,1,1]]
end


puts "input grid"
print_grid(grid)
puts "output grid"
return_grid = calculate_automaton(grid)
print_grid(return_grid)

