set nr 328

proc reverse {nr} {
	
	set x 0
	set result 0
	
	while {$nr!=0} {
		set x [expr $nr%10]
		set nr [expr ($nr/10)]
		set result [expr ($result*10) + $x]
	}
	return $result
}

puts $nr
puts [reverse $nr]