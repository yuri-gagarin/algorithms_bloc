Module class Search

	def self.binary_search_iterative(array, value)
		max = array.length - 1
		min = 0
		value = value.to_i
		
		while min <= max
		  mid = (max + min) / 2
			if value == array[mid]
				return "Found the value #{value} at index #{mid}"
			elsif value > array[mid]
				min = mid+1
			else value < array[mid]
				max = mid - 1
			end
		end
    return "Value #{value} does not exist in the given array"
	end
	
	def self.binary_search_recursive(array, value, min=0, max=array.length) 
	  max = max 
	  min = min
	  mid = (max + min) / 2
	  value = value.to_i
	  

	  if max < min
	    return "Value #{value} does not exist in the given array"
	  end
	  
	  if array[mid] == value
	    return "Found the value #{value} at index #{mid}"
	  elsif value > array[mid]
	    min = mid + 1 
	    binary_search_recursive(array, value, min)
	  elsif value < array[mid]
	    max = mid - 1
	    binary_search_recursive(array, value, 0, max)
	  end
	  
	end
	
	

end

Search.binary_search_iterative([-5, 2, 6, 8, 9, 17], '-5')

