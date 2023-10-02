s_arr = 8.times.map{gets.chomp.chars}

s_arr.reverse.each_with_index do |s_arrr, i|
  s_arrr.each_with_index do |s, j|
    if s == "*"
      puts (j+97).chr + (i+1).to_s
      exit
    end
  end
end
