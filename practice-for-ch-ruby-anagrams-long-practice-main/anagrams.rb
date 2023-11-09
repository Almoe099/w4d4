def first_anagram?(str1, str2)
    str1.chars.permutation.any? {|el| str2 == el.join}
end

p first_anagram?("gizmo", "sally")    #=> false
p first_anagram?("elvis", "lives")    #=> true

def secound_anagram?(str1, str2)
    str1.chars.permutation
    str2.chars.permutation
end
