# Implement your object-oriented solution here!
class EvenFibonacci
  attr_accessor :limit, :sum

  def initialize(limit)
    @limit = limit
  end

  def sum
    start = 0
    num1 = 0
    num2 = 1
    sum_fib = []
    total = 0
    while total < self.limit
      total = num1 + num2
      num1 = num2
      num2 = total
      sum_fib << total
      start += 1
    end
    sum_fib.select{|num|(num < self.limit && num%2==0)}.reduce(:+)
  end
end
