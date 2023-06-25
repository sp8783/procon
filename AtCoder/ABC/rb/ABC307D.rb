n = gets.to_i
S = gets.chomp.chars

ans = []
index = []

S.each do |s|
  if s == "("
    ans << s
    index << ans.length - 1
  elsif s == ")"
    if index.length == 0
      ans << s
    else
      ans = ans[0...index.pop]
    end
  else
    ans << s
  end
end

puts ans.join("")
