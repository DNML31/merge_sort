require './merge'

def merge_sort(array, result = [])

  if array.length < 2
    return array
  else 
    a = array[0..((array.length/2)-1)]
    b = array[((array.length/2))..(array.length-1)]
    a = merge_sort(a, result)
    b = merge_sort(b, result)

    c = merge(a,b)

    if c.any?
      result << c
    else
      return
    end

  end
  
  p result
  # merge(a,b)
  #how do i get the subarrays into this merge?
end

merge_sort([3,1,2,4])

# on input of n elements
#   if n < 2
#     return
#   else
#     sort left half of elements
#     sort right half of elements
#     merge sorted halves
