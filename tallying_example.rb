#I was using this to try and figure out how to turn the tallying part of RPS into a method definition
# This is what I came up with:

array = %w(red blue)
red_tally = 0
blue_tally = 0 

def tally(a, red_tally, blue_tally)
    result = a.sample
    if result == 'red'
      red_tally += 1
      puts "RED! Red's tally is now #{red_tally}"
    else
      blue_tally += 1
      puts "BLUE! Blue's tally is now #{blue_tally}"
    end
    [red_tally, blue_tally]
end
puts "Let's see what color gets selected three times first..."
loop do

  puts "This point goes to"
  red_tally, blue_tally = tally(array, red_tally, blue_tally)  #the key here is having red_tally, blue_tally equaling the def!!!!

  break if red_tally == 3 || blue_tally == 3
end
  puts "blue won" if blue_tally == 3
  puts "red won" if red_tally == 3
  puts "bye"