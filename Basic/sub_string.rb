dictionary=["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit","hello","hi","thanks"]
def substrings(string,dictionary)
	arr=string.split(/\W+/)
	result=Hash.new(0)
	for i in 0...arr.length
		result[arr[i].downcase]=result[i]+1 if dictionary.include?arr[i].downcase
	end
	return result
end

 puts substrings("Howdy partner, sit down! How's it going?", dictionary)