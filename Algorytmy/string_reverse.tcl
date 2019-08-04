set str "abcdef"


proc reverse {str} {
	
	if {[string length $str] == 1} {
		return $str
	}
	
	set temp ""
	
	set temp [string cat $temp [string range $str end end] [reverse [string range $str 0 end-1]]]
	
	return $temp
}

puts "Orginalstring: $str"
puts "Revetrsed String: [reverse $str]"