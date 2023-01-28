rucksacks = File.readlines 'input.txt', chomp: true
elf_groups =  rucksacks.each_slice(3).map{|a| a.join(" ")}
total = 0

elf_groups.each do |elf_group|
  elf1, elf2, elf3 = elf_group.split
  duplicates = elf1.chars & elf2.chars & elf3.chars

  priority_map = ("a".."z").to_a + ("A".."Z").to_a
  total = total + priority_map.index(duplicates.first) + 1
end

puts total
