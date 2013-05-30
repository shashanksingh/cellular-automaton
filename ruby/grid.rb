#$ is global variable
$grid = [[0, 0, 0], [0, 0, 0], [0, 0, 0]]


def print_grid(grid)
	grid.each do |x|
		x.each do |y|
			print y
		end
		print "\n"
	end
end


def find_binary_representation_of_a_cell(grid,x,y)
	return [grid[x][y-1],grid[x][y],grid[x][y+1]]
end

def calculate_elementary_cellular_automaton_result(binary_representation)
	return 1
end 

def calculate_automaton(grid)
	x = 0
	y = 0 
	grid.each do |x_array|
		x_array.each do |y_array|
			return_value = find_binary_representation_of_a_cell(grid,x,y)
			print x ,",",y, "=>",return_value,"\n"
			$grid[x][y] = calculate_elementary_cellular_automaton_result(return_value)
			y += 1
		end
		x += 1
		y = 0
	end	
end


puts "input grid"
print_grid($grid)
puts "output grid"
return_grid = calculate_automaton($grid)
print_grid(return_grid)

