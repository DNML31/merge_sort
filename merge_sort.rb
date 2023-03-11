def merge_sort(array)

  if array.length > 1
    array_A = array[0..(array.length/2)]              # first half
    array_B = array[(array.length/2)..array.length]   # second half

    # recursive here?

  else # if n is 1
    merged = []
    if array_A < array_B
      merged << array_A
    else
      merged << array_B



  # if 'array' (or 'array_A' / 'array_B') has 1 element (base case)
    # SELECT the two halves of 'array' for merge
    # SELECT the first item in each array; smaller one gets MERGE/SORT in - 
    # when one half's list is empty, add the rest of the other half to the MERGE/SORT
  # else ('array' has > 1 elements) keep dividing each array's parts (recursive case)
    # 'array' becomes 'array_A' and 'array_B'
end

array = [5,6,8,1,7,4,2,3]

merge_sort(array)

# divide and conquer method - 
  #sort left side
  #sort right side
  #merge two sides