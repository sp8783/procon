S = gets.chomp.chars.tally
T = gets.chomp.chars.tally

S.default = 0
T.default = 0
ans = "Yes"

("a".."z").each do |s|
  if S[s] - T[s] > 0
    diff = S[s] - T[s]
    T["@"] -= diff
  else
    diff = T[s] - S[s]
    S["@"] -= diff
  end

  ans = "No" if not("atcoder".chars.include?(s)) && (diff >= 1)
end

if S["@"] < 0 || T["@"] < 0
  ans = "No"
end

puts ans
