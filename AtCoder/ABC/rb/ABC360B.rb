s, t = gets.split.map{ |i| i.chomp.chars }
ans = "No"

(1..s.size-1).each do |w|
  (1..w).each do |c|
    str = ""
    # p s.each_slice(w).to_a
    s.each_slice(w) do |si|
      str += si[c-1] if si[c-1] != nil
    end
    # p "str: #{str}"
    if str == t.join
      ans = "Yes"
      break
    end
  end
end

puts ans
