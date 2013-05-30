#$ is global variable
$grid = [[0, 1, 0], [0, 1, 1], [0, 1, 0]]


def print_grid(grid)
	grid.each do |x|
		x.each do |y|
			print y
		end
		print "\n"
	end
end


def find_binary_representation_of_a_cell(grid,x,y)
	left = grid[x][y-1]
	current = grid[x][y]
	right = grid[x][y+1]

	if left == nil
		left = 0
	end
	if right == nil
		right = 0
	end
	if current == nil
		current = 0
		puts "WTF why is current nil"
	end
	return [left,current,right]
end

def calculate_elementary_cellular_automaton_result(binary_representation)
	if binary_representation == [1,1,1]
		return 0
	end
	if binary_representation == [1,1,0]
		return 0
	end
	if binary_representation == [1,0,1]
		return 0
	end
	if binary_representation == [1,0,0]
		return 1
	end
	if binary_representation == [0,1,1]
		return 1
	end
	if binary_representation == [0,1,0]
		return 1
	end
	if binary_representation == [0,0,1]
		return 1
	end
	if binary_representation = [0,0,0]
		return 0
	end
end 

def calculate_automaton(grid)
	x = 0
	y = 0 
	grid.each do |x_array|
		x_array.each do |y_array|
			return_value = find_binary_representation_of_a_cell(grid,x,y)
			#print x ,",",y, "=>",return_value,"\n"
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
generation = 0
while true
	return_grid = calculate_automaton($grid)
	print "Generation =>",generation, "\n"
	print_grid($grid)
	puts "\n"
	generation += 1
	gets()
end
