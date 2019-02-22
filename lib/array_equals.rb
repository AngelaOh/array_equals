# Determines if the two input arrays have the same count of elements
# and the same integer values in the same exact order
def array_equals(array1, array2)

  # check if any arrays == nil
  check_nils_arr = [array1, array2]
  no_nil = true
  check_nils_arr.each do |array|
    if array == nil
      no_nil = false
    end
  end

  if no_nil
    # order matters, iterate through larger array
    if array2.length > array1.length
      first_arr = array2
      second_arr = array1
    else
      first_arr = array1
      second_arr = array2
    end

    is_same = true
    # determine if values are equal or not
    first_arr.each_with_index do |item, index|
      if item != second_arr[index]
        is_same = false
      end
    end
  else #if any array contains nil
    if array1 == array2
      is_same = true
    else
      is_same = false
    end
  end

  return is_same
end

p array_equals(nil, nil)
