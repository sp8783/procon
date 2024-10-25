# kaigionrails
n, q = gets.split.map(&:to_i)
ht = q.times.map { gets.split }

now = [1, 2]
h_hash = {"L" => 0, "R" => 1}

ans = 0
ht.each do |h, t|
  t = t.to_i
  if h == "L"
    to, ng = now
  else
    to, ng = now.reverse
  end
  from, to = [t, to].sort
  if from <= ng && ng <= to
    ans += n + from - to
  else
    ans += to - from
  end
  now[h_hash[h]] = t
end

puts ans
