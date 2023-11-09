def first_anagram?(str1, str2)
    str1.chars.permutation.any? {|el| str2 == el.join}
end

p first_anagram?("gizmo", "sally")    #=> false
p first_anagram?("elvis", "lives")    #=> true

def second_anagram?(str1, str2)
  str1.each_char do |char|
    idx = str2.index(char) 
    return false if idx.nil?
    str2[idx] = "" 
  end
  str2.empty?
end

p second_anagram?("gizmo", "sally")    #=> false
p second_anagram?("elvis", "lives")    #=> true

def third_anagram?(str1, str2)
    str1.chars.sort == str2.chars.sort
end

p third_anagram?("gizmo", "sally")    #=> false
p third_anagram?("elvis", "lives")    #=> true

def fourth_anagram?(str1, str2)
    str1_freq = str1.chars.tally
    str2_freq = str2.chars.tally

    str1_freq == str2_freq
end



p fourth_anagram?("gizmo", "sally")    #=> false
p fourth_anagram?("elvis", "lives")    #=> true

def bonus_fourth_anagram?(str1, str2)
  count = Hash.new(0)

  str1.split("").each {|char| count[char] += 1 } 
  str2.split("").each {|char| count[char] -= 1 }
  count.all? {|_, v| v.zero? }
end



p bonus_fourth_anagram?("gizmo", "sally")    #=> false
p bonus_fourth_anagram?("elvis", "lives")    #=> true