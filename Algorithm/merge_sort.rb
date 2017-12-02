def merge_sort(arr)
	if arr.size < 2
		return arr
	else
	left = arr.slice(0, arr.length/2)
	right = arr.slice(arr.length/2, (arr.length) -1)
    end	
	left = merge_sort(left)
	right = merge_sort(right)

	return merge(left,right)
end

def merge(left,right)
	result = Array.new
	while left.size != 0 && right.size !=0
		if left[0] <= right[0]
			result << left.shift
		else
			result << right.shift
		end
	end
	
	while left.size != 0 && right.size == 0
		result << left.shift
	end

	while right.size !=0 && left.size ==0
		result << right.shift
	end

	return result
end

arr = [1,2,1,88,3,4,55,12,54,56,23,67,23,45,6,34]

puts merge_sort(arr)