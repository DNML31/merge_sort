require './merge'

def merge_sort(array)

  if array.length < 2
    return
  else 
    # sort left half of elements
    a = array[0..((array.length/2)-1)]
    # sort right half of elements
    b = array[(array.length/2)..array.length]
    merge(a,b)
  end

  # assign left and right halves to separate arrays
  # if merge_a.none?
  #   merge_a << a
  # elsif merge_b.none?
  #   merge_b << b
  # end

end


# on input of n elements
#   if n < 2
#     return
#   else
#     sort left half of elements
#     sort right half of elements 
#     merge sorted halves

array = [1,2,6,4,5,3]
merge_sort(array)

