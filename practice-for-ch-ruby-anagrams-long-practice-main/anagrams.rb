def first_anagram?(str1, str2)
    str1.chars.permutation.any? {|el| str2 == el.join}
end

p first_anagram?("gizmo", "sally")    #=> false
p first_anagram?("elvis", "lives")    #=> true

def second_anagram?(str1, str2)
  str1.each_char do |char|
    idx = str2.index(char) 
    str2[idx] = "" unless idx.nil?
  end
  str2.empty?
end

p second_anagram?("gizmo", "sally")    #=> false
p second_anagram?("elvis", "lives")    #=> true
