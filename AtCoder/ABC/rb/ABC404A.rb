s = gets.chomp.chars
("a".."z").each do |c|
  unless s.include?(c)
    puts c
    exit
  end
end
