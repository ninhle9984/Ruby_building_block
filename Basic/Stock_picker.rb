def stock_picker(arr)
	if arr.length==0||arr.length==1
		return "Error"
	else
		maxvalue=arr[1]-arr[0]
		for i in 0...arr.length
			for j in i.next...arr.length
				if maxvalue<(arr[j]-arr[i])
					maxvalue=arr[j]-arr[i]
					buy=i;
					sale=j;					
				end

			end
		end
		return "[#{buy},#{sale}]"
	end
end
puts stock_picker([1,2,3,4,5])