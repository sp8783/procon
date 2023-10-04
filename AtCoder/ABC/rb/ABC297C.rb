h, w = gets.split.map(&:to_i)
s_arr = h.times.map{gets.chomp.chars}

h.times do |i|
  (w-1).times do |j|
    if s_arr[i][j] == "T" && s_arr[i][j+1] == "T"
      s_arr[i][j], s_arr[i][j+1] = "P", "C"
    end
  end
end

s_arr.each.map{|s_arrr| puts s_arrr.join}
