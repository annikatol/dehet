word = ARGV[0]

def kofschip(stam)
	laatste_letter = stam[-1]
	return 'tkfschp'.include? laatste_letter
end

def verledentijd(stam)
	if kofschip(stam) == true 
		stam+'te'
	elsif kofschip(stam) == false
		stam+'de'
	else 
		'unknown'
	end
end

puts "kofschip van #{word} is '#{verledentijd(word)}'"
