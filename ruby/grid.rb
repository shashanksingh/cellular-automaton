grid = [[0, 0, 0], [0, 0, 0], [0, 0, 0]]


def print_grid(grid)
	grid.each do |x|
		x.each do |y|
			puts y
		end
		puts "\n"
	end
end


def find_binary_representation_of_a_cell(grid,x,y)
	return [1,1,1]
end

def calculate_elementary_cellular_automaton_result(binary_representation)
	return 1
end 

def calculate_automaton(grid)
	grid.each do |x|
		x.each do |y|
			return_value = find_binary_representation_of_a_cell(grid,x,y)
			calculate_elementary_cellular_automaton_result(return_value)
		end
	end	
end


puts "input grid"
print_grid(grid)
puts "output grid"
return_grid = calculate_automaton(grid)
print_grid(return_grid)

