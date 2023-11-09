def bad_two_sum?(arr, target_sum) # O(n^2)

    (0...arr.length).each do |i|
        (0...arr.length).each do |j|
            return true if j > i && arr[i] + arr[j] == target_sum
        end
    end
    false
end

arr = [0, 1, 5, 7]
p bad_two_sum?(arr, 6) # => should be true
p bad_two_sum?(arr, 10) # => should be false

def okay_two_sum?(arr, target_sum)

end

p okay_two_sum?(arr, 6) # => should be true
p okay_two_sum?(arr, 10) # => should be false