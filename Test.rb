# n
class Test

  def initialize (num = 10)
    @num = num
  end

  def num
    @num
  end
end

test = Test.new(20)

puts test.num