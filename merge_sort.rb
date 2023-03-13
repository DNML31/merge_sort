def merge_sort(array)

  if array.length < 2
    return

  else 
    a = array[0..((array.length/2)-1)]
    # first half
    # recursive here?

    b = array[(array.length/2)..array.length]
    # second half
    # recursive here?
    
  end


end
# on input of n elements
#   if n < 2
#     return
#   else
#     sort left half of elements
#     sort right half of elements 
#     merge sorted halves

merge_sort([2,1])
