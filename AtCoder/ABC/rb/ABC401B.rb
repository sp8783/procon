n = gets.to_i

islogin = false
ans = 0
n.times do
  case gets.chomp
  when "login"
    islogin = true
  when "logout"
    islogin = false
  when "private"
    ans += 1 unless islogin
  end
end

puts ans
