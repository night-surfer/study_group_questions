# I am trying to figure out how to remove the puts on line 11 so I can put it on line 14?

a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']

def isolate_and_remove(array, letter_1, letter_2 = 'nil')
  new_a = array.map {|strings| strings.split }
  new_a.flatten!

  new_a.delete_if {|string| string.start_with?(letter_1) || string.start_with?(letter_2)}
  new_a.each_with_index {|string, idx| puts "#{idx + 1}: #{string}"}
end

isolate_and_remove(a, 's', 'w')