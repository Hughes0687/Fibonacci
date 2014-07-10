def fib(n)
  return 1 if n <= 2
  fib(n - 1) + fib(n - 2)
end

def it_fib(n)
  return 1 if n <= 2
  x = 1
  y = 1
  (3..n).each do |_|
    y, x = x + y, y
  end
  y
end