

#time = '12:34'

#minutes = time.split('').grep(/\d/).join.to_i

def after(time)
  hours = time[0, 2].to_i
  minutes = time[3,2].to_i
  minutes_after = hours * 60 + minutes 
  minutes_after == 1440 ? 0 : minutes_after
end

def before(time)
  new_time = after(time)
  new_time == 0 ? new_time : 1440 - new_time
end


p after "12:34" 
p before "12:34" 