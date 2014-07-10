def fib(n)
  return 1 if n <= 2
  fib(n - 1) + fib(n - 2)  
end

$cache = []

def fib_cache(n)
  $cache[n] ||= if n < 2
    n
  else
    fib_cache(n-1) + fib_cache(n-2)
  end
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