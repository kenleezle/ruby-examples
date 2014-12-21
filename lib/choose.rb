def count_choose(n,k)
  return 1 if k == 0
  return 1 if n == k
  return n if k == 1
  return choose(n-1,k) + choose(n-1,k-1)
end
def choose(n,k)
  retval = Array.new
  return [(1..n).to_a] if n == k
  if k == 1 then
    (1..n).each do | i | retval.push([i]) end
    return retval
  end
  left = choose(n-1,k)
  right = choose(n-1,k-1)
  right.each do | a | a.push(n) end
  retval.concat(left)
  retval.concat(right)
  return retval
end
