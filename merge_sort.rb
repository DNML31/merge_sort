require './merge'

def merge_sort(array)

  if array.length == 1
    return array
  end

  a = array[0..(array.length/2)-1]
  b = array[(array.length/2)..(array.length)]
  a_sort = merge_sort(a)
  b_sort = merge_sort(b)

  c = []

  until a_sort.empty? && b_sort.empty? do
    if a_sort.empty?
      return c + b_sort
    elsif b_sort.empty?
      return c + a_sort
    else
      a_sort[0] < b_sort[0] ? c << a_sort.shift : c << b_sort.shift
    end
  end

  c

end

merge_sort([6,1,5,2,4,3])


# def merge_sort(array)
#   if array.length == 1
#     return array
#   end

#   left = array[0..(array.length/2)-1]
#   right = array[(array.length/2)..array.length]

#   sort_left = merge_sort(left)
#   sort_right = merge_sort(right)
  
#   c = []

#   until (sort_left.empty? && sort_right.empty?) do
#     if sort_left.empty?
#       return c + sort_right
#     elsif sort_right.empty?
#       return c + sort_left
#     else
#       sort_left[0] < sort_right[0] ? c << sort_left.shift : c << sort_right.shift
  
#     end
#   end
#   print c
# end

