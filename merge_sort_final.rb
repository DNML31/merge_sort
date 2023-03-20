def merge_sort(array)
  if array.length == 1
    return array
  end

  left = array[0..(array.length/2)-1]
  right = array [array.length/2..array.length]

  sort_left = merge_sort(left)
  sort_right = merge_sort(right)

  merge_both = []

  until sort_left.empty? && sort_right.empty?
    if sort_left.empty?
      return merge_both + sort_right
    elsif sort_right.empty?
      return merge_both + sort_left
    else

      if sort_left[0] < sort_right[0]
        merge_both << sort_left.shift
      elsif sort_right[0] < sort_left[0]
        merge_both << sort_right.shift
      end

    end
  end
  
  merge_both

end

p merge_sort([4,1,2,3])