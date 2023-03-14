def merge(a, b)
  x = a.length
  y = b.length
  i = 0
  j = 0
  k = 0

  c = []

  until (i == x || j == y) do
 
    if (a[i] < b[j])      # b[0] => [nil,2,4,5,6,nil,nil]
      c[k+=1] = a[i+=1]
    else
      c[k+=1] = b[j+=1]
    end

  end

  if i == x
    c[k+=1] = b[j+=1]
  elsif j == y
    c[k+=1] = a[i+=1]
  end
  # one of the arrays have reached the end of their lists at this point
  # copy the remaining numbers in the other list to c.
  # use a 'for' loop to handle array 'a' and another loop for array 'b'.
  print c
end

a = [1,2,4]
b = [3,5,6]

merge(a, b)