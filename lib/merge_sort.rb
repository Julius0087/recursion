def merge_sort(array)
  # base case
  return array if array.length < 2

  # split array into two halves
  split_array = array.each_slice( (array.size/2.0).round ).to_a
  left_side = split_array[0]
  right_side = split_array[1]
  
  # sort the two halves recursively
  left_side_sorted = merge_sort(left_side)
  right_side_sorted = merge_sort(right_side)

  # merge the two halves
  sorted_arr = []
  loop do
    if left_side_sorted[0] > right_side_sorted[0]
      sorted_arr << right_side_sorted.shift
    else
      sorted_arr << left_side_sorted.shift
    end

    if left_side_sorted.empty?
      sorted_arr << right_side_sorted
      break
    end
    if right_side_sorted.empty?
      sorted_arr << left_side_sorted
      break
    end
  end
  sorted_arr.flatten
end

p merge_sort([8, 58, 2, 3, 9, 1, 4, 24, 18, 18, 18, 44])
