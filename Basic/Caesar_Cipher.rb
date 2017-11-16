
def Caesar_Cipher(text,num)
		for i in 0...text.length
				if text[i].ord>=97&&text[i].ord<=122
					if text[i].ord+num>122
						text[i]=(text[i].ord+num-26).chr
					else
						text[i]=(text[i].ord+num).chr
					end
				elsif text[i].ord>=65&&text[i].ord<=90
					if text[i].ord+num>90
						text[i]=(text[i].ord+num-26).chr
					else
						text[i]=(text[i].ord+num).chr
					end
					
				end
		end
     return text
end
print " In put text  : "
 text=gets.chomp
print "Input number greater than 0 : "
 num=gets.chomp.to_i
 while num==0
 	print "Error , you input not a number , again : "
 	num=gets.chomp.to_i
 end
puts "Here your result : " + Caesar_Cipher(text,num)
