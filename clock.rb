# frozen_string_literal: true

MINUTE_MIN_DEGREE = 6
HOUR_MIN_DEGREE = 360.0 / 12.0 / 60
DEGREE_HOUR = 360.0 / 12.0
DEGREE_MIN = 360.0 / 60.0

time = gets.chomp

if (time == nil || time == '')
  time = Time.now
  hour = time.hour
  min = time.min
else
  time = time.split('-').map { |s| s.chomp.to_i}
  puts time.to_s
  hour = time[0]
  min = time[1]
end


hour_degree = hour * DEGREE_HOUR + min * HOUR_MIN_DEGREE
hour_degree -= 360 if hour_degree > 360

min_degree = min * DEGREE_MIN

degree = (hour_degree - min_degree).abs
degree = 360 - degree if degree > 180

puts "#{hour}:#{min}"
puts degree
# puts "#{hour_degree}  #{min_degree}"
