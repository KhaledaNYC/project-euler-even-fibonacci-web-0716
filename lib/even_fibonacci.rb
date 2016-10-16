# Implement your procedural solution here!
def even_fibonacci_sum(limit)

  start = 0
  num1 = 0
  num2 = 1
  sum_fib = []
  total = 0
  while total < limit
    total = num1 + num2
    num1 = num2
    num2 = total
    sum_fib << total
    start += 1
  end
  sum_fib.select{|num|(num < limit && num%2==0)}.reduce(:+)

end
