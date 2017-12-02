arr=[1,2,3,4,5,6,7,8,10]


def binary_search(n,arr,left,right)
	midle = (right + left)/2
	if arr[midle] == n 
		puts "Found #{n} at index #{midle} of array"
	elsif arr[midle] < n
		left = midle
		binary_search(n,arr,left,right)
	else
		right = midle
		binary_search(n,arr,left,right)
	end
end

puts binary_search(6,arr,0,arr.length)