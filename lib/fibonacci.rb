def fibs(n)
  a = 0
  b = 1
  arr = [a, b]
  (n - 2).times do
    result = a + b
    a = b
    b = result
    arr << result
  end
  arr
end


def fibs_rec(n)
  # base case
  return [0] if n == 0
  return [0, 1] if n == 1
  # dive deeper until n == 1 or 0
  arr = fibs_rec(n - 1)
  # return array with added last two numbers
  arr << arr[-2] + arr[-1]
end

p fibs_rec(4)
  
