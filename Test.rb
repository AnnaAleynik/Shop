# n
a = 'adf'
a.each_byte do |c|
  char = c.chr
  puts "#{c} #{char}"
end
