while true
  nn, ww, dd = gets.split.map(&:to_i)

  break if [nn, ww, dd] == [0, 0, 0]

  ans = [ww * dd]
  lst = [[ww, dd]]
  
  nn.times do
    p, s = gets.split.map(&:to_i)
    w, d = lst.delete_at(p - 1)
    _ = ans.delete_at(p - 1)
    
    s_i = s % ((w + d) * 2)
    if (0..w).include?(s_i % (w + d))
      s1 = (s_i % (w + d)) * d
      s2 = (w - s_i % (w + d)) * d
      if s1 <= s2
        ans += [s1, s2]
        lst += [[s_i % (w + d), d], [w - s_i % (w + d), d]]
      else
        ans += [s2, s1]
        lst += [[w - s_i % (w + d), d], [s_i % (w + d), d]]
      end
    else
      s1 = w * (s_i % (w + d) - w)
      s2 = w * (w + d - s_i % (w + d))
      if s1 <= s2
        ans += [s1, s2]
        lst += [[w, s_i % (w + d) - w], [w, w + d - s_i % (w + d)]]
      else
        ans += [s2, s1]
        lst += [[w, w + d - s_i % (w + d)], [w, s_i % (w + d) - w]]
      end
    end
  end
  puts ans.sort.join(' ')
end
