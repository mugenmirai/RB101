#minutes in a day 1440
# 60 * 24 = 1440

def time_of_day(time)
  format('%02u:%02u', (time % 1440) / 60, (time % 1440) % 60)
end

p time_of_day(-1437)
puts ''

def time_o_day(time)
  total_minutes = time % 1440
  hours = total_minutes / 60
  minutes = total_minutes % 60
  format('%02d:%02d', hours, minutes)
end

p time_o_day(0)
p time_o_day -4231
p time_o_day 754