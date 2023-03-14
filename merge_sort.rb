def merge_sort(array, sorted)

  if array.length < 2
    # sorted << array
    return

  else 
    a = array[0..((array.length/2)-1)]
    # sort left half of elements
    merge_sort(a, sorted)

    print "\nthis is #{sorted}"


    b = array[(array.length/2)..array.length]
    # sort right half of elements
    merge_sort(b, sorted)
    print "\nthis is #{sorted}"

  end
  
  if a[0] < b[0]
    sorted << a[0]
  else
    sorted << b[0]
  end
  # merge sorted halves
  print "\n#{sorted}"
end
# on input of n elements
#   if n < 2
#     return
#   else
#     sort left half of elements
#     sort right half of elements 
#     merge sorted halves
array = [2,1]
sorted = []
puts merge_sort(array, sorted)
