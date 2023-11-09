def my_min(list) # O (n)

    min = list.first
    list.each do |num|
        min = num if num < min
    end
    min
end 

list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
p my_min(list)  # =>  -5

def largest_contiguous_subsum(list)
    max = 0
    sum = 0
    max_num = list.first
    (0...list.length).each do |i|
        (i...list.length).each do |j|
            max = list[i..j].sum
            max_num = max if max > max_num
        end
    end
    max_num
end

list = [5, 3, -7]
p largest_contiguous_subsum(list) # => 8