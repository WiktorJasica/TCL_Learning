set arrA "1 2 3"
set arrB "10 20 30 40"
set nr 42

proc sumOfTwo {arrA arrB nr} {
	set arrC ""
	
	for {set i 0} {$i < [llength $arrB]} {incr i} {
		lappend arrC [expr ($nr -[lindex $arrB $i])]
	}
	
	foreach i $arrA {
		if {[lsearch $arrC $i] != -1} {
		return TRUE
		} 
	}
	
	return FALSE
}

puts [sumOfTwo $arrA $arrB $nr]