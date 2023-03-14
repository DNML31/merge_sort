def merge(a, b)
  x = a.length
  y = b.length
  i = 0
  j = 0
  k = 0

  c = []

  while (i <= x && j <= y) do
 
    if (a[i] < b[0])      # b is nil?
      c[k+=1] = a[i+=1]
    else
      c[k+=1] = b[j+=1]
    end

  end

  # one of the arrays have reached the end of their lists at this point
  # copy the remaining numbers in the other list to c.
  # use a 'for' loop to handle array a and another loop for array b.
  print c
end

a = [1,2,4]
b = [3,5,6]

merge(a, b)