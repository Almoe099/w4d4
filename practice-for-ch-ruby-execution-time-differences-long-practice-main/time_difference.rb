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
    cur_max = 0
    max_sum_so_far = list.first
    (0...list.length).each do |i|
        (i...list.length).each do |j|
            cur_max = list[i..j].sum
            max_sum_so_far = max if max > max_num
        end
    end
    max_num
end

def improved_largest_contiguous_subsum(list)
  cur_sum = 0
  max_sum = list.first

  (0...list.length).each do |i|
    cur_sum = list[0..i].sum
    cur_sum = 0 if cur_sum < 0 
    max_sum = cur_sum if max_sum < cur_sum   
  end
  max_sum
end

list = [5, 3, -7]
p improved_largest_contiguous_subsum(list) # => 8

list = [2, 3, -6, 7, -6, 7]
p improved_largest_contiguous_subsum(list) # => 8 (from [7, -6, 7])