#turn the following array into a new array that consists of strings containing one word. 
#(ex. ["white snow", etc...] → ["white", "snow", etc...]. 
#Look into using Array's map and flatten methods, as well as String's split method.
#do it with different method definitions for each thing you add on (split, then delete if, then index)

a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']

def splittem(array)
  new_a = array.map! do |string|
    string.split
  end
  new_a.flatten!
end

def removem(array, letter1, letter2 = 'nil', letter3 = 'nil')
  array.delete_if do |word|
    word.start_with?(letter1) || word.start_with?(letter2) || word.start_with?(letter3)
  end
end

def index(array)
  array.each_with_index do |string, idx|
    puts "#{idx + 1}: #{string}"
  end
end

puts "give a letter????"
ans1 = gets.chomp
puts "another letter????"
ans2 = gets.chomp
puts "one last letter????"
ans3 = gets.chomp

p splittem(a)
p removem(a, ans1, ans2, ans3)
index(a)