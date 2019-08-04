set nr 300
puts $nr

proc binaryConvert {nr} {
	
	set tab ""
	set binary ""
	
	while {$nr > 0} {
		
		lappend tab [expr $nr%2]
		set nr [expr $nr/2]
	}
	
	for {set i 0} {$i <[llength $tab]} {incr i} {
	
		lset binary $i [lindex $tab [expr ([llength $tab] - 1 - $i)]]
	}	
		
	puts $binary
}

binaryConvert $nr