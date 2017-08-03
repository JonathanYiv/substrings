def substrings string, dictionary
	hash = {}
	string.downcase!
	for i in 0...dictionary.length
		if(string.include? dictionary[i])
			hash[dictionary[i]] = string.scan(/#{dictionary[i]}/).count
		end
	end
	puts hash
end


dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
 
substrings("below", dictionary)

substrings("Howdy partner, sit down! How's it going?", dictionary)