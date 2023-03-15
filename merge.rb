def merge(a, b)
  x = a.length
  y = b.length
  i = 0
  j = 0
  k = 0

  c = []

  while (i <= x && j <= y) do

    if (a[i] < b[j])
      c[k] = a[i]
      k += 1
      i += 1
    else
      c[k] = b[j]
      k += 1
      j += 1
    end
    print "\nthis is c #{c}"
  end

  if i <= x
    c[k] = a[i]
    k += 1
    i += 1
  elsif j <= y
    c[k] = b[j]
    k += 1
    j += 1
  end
  # one of the arrays have reached the end of their lists at this point
  # copy the remaining numbers in the other list to c.
  # use a 'for' loop to handle array 'a' and another loop for array 'b'.
  print c
end

a = [2,4]
b = [1,3]

merge(a, b)