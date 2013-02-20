# word = ARGV[0]

def kofschip(stam)
	laatste_letter = stam[-1]
	return 'tkfschp'.include? laatste_letter
end

def verledentijd(stam)
	if kofschip(stam) == true 
		puts stam+'te'
	elsif kofschip(stam) == false
		puts stam+'de'
	else 
		puts unknown
	end
end

puts "kofschip van smurf is"
puts verledentijd('smurf')