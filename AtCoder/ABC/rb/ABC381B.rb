s = gets.chomp.chars

if s.size.odd?
  ans = "No"
else
  set = Set.new
  ans = "Yes"
  s.each_slice(2) do |a, b|
    if a == b && !(set.include?(a))
      set << a
    else
      ans = "No"
      break
    end
  end
end

puts ans
