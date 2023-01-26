rucksacks = File.readlines 'input.txt', chomp: true

rucksacks.each do |rucksack|
  middle = rucksack.length / 2
  first_compartment = rucksack[0...middle].chars
  last_compartment = rucksack[middle..].chars
  duplicates = first_compartment & last_compartment

  total = 0  
  priority_map = ("a".."z").to_a + ("A".."Z").to_a
  total = total + priority_map.index(duplicates.first) + 1
  
  puts total
end
