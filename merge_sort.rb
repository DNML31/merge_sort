require './merge'

def merge_sort(array)

  if array.length < 2
    return
  else 
    # sort left half of elements
    a = array[0..((array.length/2)-1)]
    merge_sort(a)
    # sort right half of elements
    b = array[((array.length/2))..((array.length)-1)]
    merge_sort(b)
    # only returns one 'c' array
  end
  merge(a,b)
end

array = [4,1,3,2]
merge_sort(array)

# on input of n elements
#   if n < 2
#     return
#   else
#     sort left half of elements
#     sort right half of elements 
#     merge sorted halves


