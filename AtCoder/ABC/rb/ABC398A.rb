n = gets.to_i

if n.odd?
  s = "-"*((n-1)/2) + "=" + "-"*((n-1)/2)
else
  s = "-"*((n-2)/2) + "==" + "-"*((n-2)/2)
end

puts s
