def merge_sort(array)

  if array.length < 2
    return
  else 
    # sort left half of elements
    a = array[0..((array.length/2)-1)]
    print "\nthis is array A#{a}"
    merge_sort(a)

    # sort right half of elements
    b = array[(array.length/2)..array.length]
    print "\nthis is array B#{b}"
    merge_sort(b)
  end

  merge_a = []
  merge_b = []
  merge_c = []

  # assign left and right halves to separate arrays
  if merge_a.none?
    merge_a << a
  elsif merge_b.none?
    merge_b << b
  end

  print "\nthis is A #{merge_a}"
  print "\nthis is B #{merge_b}"

  # merge sorted halves

  # if merge_a[0] < merge_b[0]
  #   merge_c << a[0]
  # else
  #   merge_c << b[0]
  # end

  print "\nthis is C #{merge_c}"

end


# on input of n elements
#   if n < 2
#     return
#   else
#     sort left half of elements
#     sort right half of elements 
#     merge sorted halves
array = [2,1,3,4]
puts merge_sort(array)


# merge section vs. sort section