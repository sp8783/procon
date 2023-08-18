input = readlines
pins = input[0].chomp.chars.map(&:to_i)

lines = [[6],[3],[1,7],[0,4],[2,8],[5],[9]]

if pins[0] == 0
  # all pins in line is hit == true
  hit_lines = lines.map{|line| line.all?{|i| pins[i] == 0} }
  for i in 1...(hit_lines.size - 1)
    if hit_lines[i] == true
      if (0...i).any?{|j| hit_lines[j] == false} and ((i + 1)...(hit_lines.size)).any?{|j| hit_lines[j] == false}
        puts "Yes"
        exit
      end
    end
  end
end
puts "No"

