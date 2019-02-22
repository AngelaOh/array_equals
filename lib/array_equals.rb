# Determines if the two input arrays have the same count of elements
# and the same integer values in the same exact order
def array_equals(array1, array2)

  # check if any arrays == nil
  check_nils_arr = [array1, array2]
  no_nil = true
  index = 0

  2.times do
    no_nil = false if check_nils_arr[index] == nil
    index += 1
  end

  is_same = true
  if no_nil
    # if length is not same, arrays can't be equal
    if array2.length != array1.length
      is_same = false
    else
      index = 0
      times_loop_num = array1.length - 1
      (times_loop_num).times do
        if array1[index] != array2[index]
          is_same = false
        end
        index += 1
      end
    end
    ## determine if values are equal or not
  else #if any array contains nil
    if array1 == array2
      is_same = true
    else
      is_same = false
    end
  end

  return is_same
end

# p array_equals(nil, nil)
