# AOC Puzzle 01

function find_the_number_of_positive_changes()
	io = split(read("aoc-01-part-1.txt", String), '\n')
	filter!(!isempty, io)
	data = parse.(Int, io)
    count = 0
    for i in 1:length(data) - 1
        count += ifelse(data[i] < data[i + 1], 1, 0)
    end
    return count
end

x = find_the_number_of_positive_changes()
println(x)
