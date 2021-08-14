def bubble_sort (array)
  #define default values 
  len = array.length() 
  i = 0
  while i <= len do 
    if len == 0 
      return array
    elsif i == len - 1
      len = len - 1
      i = -1
    elsif array[i] > array[i + 1]
      array = swap(array, i)
    end
    i += 1
  end
  return array
end

def swap (array, index1)
  temp = 0 
  temp = array[index1]
  array[index1] = array[index1 + 1]
  array[index1 + 1] = temp
  return array
end

mixed = [6,5,3,1,8,7,2,4]

print bubble_sort(mixed)
