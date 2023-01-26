lines = File.readlines 'input.txt', chomp: true

running_score_for_all_hands = 0

lines.each do |line|
  opponent, mine = line.split " "
  
  opponent =
    if opponent == "A" 
      "Rock"
    elsif opponent == "B"
      "Paper"
    elsif opponent == "C"
      "Scissors"
    end
  
  mine =
    if mine == "X"
      # "Lose"
      if opponent == "Rock" 
        "Scissors"
      elsif opponent == "Scissors"
        "Paper"
      else
        "Rock"
      end
    elsif mine == "Y"
      # "Draw"
      if opponent == "Rock" 
        "Rock"
      elsif opponent == "Scissors"
        "Scissors"
      else
        "Paper"
      end
    elsif mine == "Z"
      # "Win"
      if opponent == "Rock" 
        "Paper"
      elsif opponent == "Scissors"
        "Rock"
      else
        "Scissors"
      end
    end
  
  shape_score = 
    if mine == "Rock"
      1
    elsif mine == "Paper"
      2
    elsif mine == "Scissors"
      3
    end
  
  score =
    case [opponent, mine]
    when ["Rock", "Rock"], ["Paper", "Paper"], ["Scissors", "Scissors"]
      3
    when ["Rock", "Paper"], ["Paper", "Scissors"], ["Scissors", "Rock"]
      6
    when ["Rock", "Scissors"], ["Paper", "Rock"], ["Scissors", "Paper"]
      0
    end

  running_score_for_all_hands = running_score_for_all_hands + shape_score + score
end

puts running_score_for_all_hands
