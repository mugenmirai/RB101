def short_long_short(s1, s2)
  puts s1.size > s2.size ? s2 + s1 + s2 : s1 + s2 + s1 
end


short_long_short('abc', 'defgh')
short_long_short('abcde', 'fgh')
short_long_short('', 'xyz')
