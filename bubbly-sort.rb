#Get mishmatched Array
#move down array and check 2 numbers
#if first one is larger than second then swap
#move to next cell
#after you move fully through array set last one and restart

def bubble_sort (array)
  #define default values 
  len = array.length() 
  puts "len is #{len}"
  i = 0
  while i <= len do 
    if len == 0 
      return array
    elsif i == len - 1
      len = len - 1
      i = -1
      puts "Found end of array"
      puts "len is #{len}"
    elsif array[i] > array[i + 1]
      array = swap(array, i)
      puts "Found Swap"
    end
    i += 1
    puts "i is #{i}"
    p array
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
