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

    if c.nil?
      return
    elsif c.any?
      result << c
    end
  end


  a = result[0..((result.length/2)-1)]
  b = result[((result.length/2))..(result.length-1)]
  result = merge(a.flatten, b.flatten)
  return

end

merge_sort([6,1,5,2,4,3])

# on input of n elements
#   if n < 2
#     return
#   else
#     sort left half of elements
#     sort right half of elements
#     merge sorted halves
