def merge(a, b)
  x = a.length
  y = b.length

  i = 0
  j = 0
  k = 0

  c = []

  while (i < x && j < y) do
    if (a[i] < b[j])
      c[k] = a[i]
      k += 1
      i += 1
    else
      c[k] = b[j]
      k += 1
      j += 1
    end
  end

  if a[i].nil?
    c.insert(k, b[j..(y-1)])
  elsif b[j].nil?
    c.insert(k, a[i..(x-1)])
  end

  print c.flatten
end

# a = [3,5,6]
# b = [1,2,4]
