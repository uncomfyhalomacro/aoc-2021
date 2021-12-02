# AOC Puzzle 02

function sliding_window_finding_positive_changes()
    io = split(read("aoc-01-part-2.txt", String), '\n')
    filter!(!isempty, io)
    data = parse.(Int, io)
    count_1 = 0
    count_2 = 0
    for i in 1:length(data) - 1
        count_1 += ifelse(data[i] < data[i + 1], 1, 0)
    end
    count_2 = sum(prev < next for (prev, next) in zip(data, data[4:end]))
    return (count_1, count_2)
end

println(sliding_window_finding_positive_changes())

    
