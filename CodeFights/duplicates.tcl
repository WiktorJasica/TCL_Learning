set array "1 2 3 1" 

proc isDuplicate {arr} {

	set sortedArray [lsort -unique $arr]
	puts [llength $sortedArray]
	puts [llength $arr]
	if {[llength $sortedArray] eq [llength $arr]} {
		return FALSE
	} else {return TRUE}
}

puts [isDuplicate $array]