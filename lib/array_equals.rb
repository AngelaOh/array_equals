# Determines if the two input arrays have the same count of elements
# and the same integer values in the same exact order
def array_equals(array1, array2)

  # check if any arrays == nil
  check_nils_arr = [array1, array2]
  no_nil = true
  check_nils_arr.length.times do |index|
    no_nil = false if check_nils_arr[index] == nil
  end

  is_same = true
  if no_nil
    if array2.length != array1.length
      is_same = false
    else
      array1.length.times do |index|
        is_same = false if array1[index] != array2[index]
      end
    end
  else #if any array contains nil
    is_same = false if array1 != array2
  end

  return is_same
end
