array = [1, 2, 3, 4]

def my_each(array)
  if block_given?
    i = 0
    
    while i < array.length
      yield(array[i])
      i = i + 1
    end 
    array
  else 
    "No block was given!"
  end
end 

my_each(array) do |i|
  return i
end