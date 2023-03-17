require './merge'

def merge_sort(array)

  if array.length < 2
    return array
  else 
    a = array[0..((array.length/2)-1)]
    a = merge_sort(a)
    # print "\nthis is a #{a}\n"
    b = array[((array.length/2))..((array.length)-1)]
    b = merge_sort(b)
    # print "\nthis is b #{b}\n"
  end
  merge(a,b)
  #how do i get the subarrays into this merge?
end

array = [3,1,2,4]
merge_sort(array)

# on input of n elements
#   if n < 2
#     return
#   else
#     sort left half of elements
#     sort right half of elements
#     merge sorted halves

