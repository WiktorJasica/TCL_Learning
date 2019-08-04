set arr "9 1 2 4 5 7 8 6 3"
set left 0
set right [expr ([llength $arr]-1)]



proc quickSort {tab left right} {
	
	if {$left >= $right} {
		return $tab
	}
	
	set border [expr $left-1]
	set piv [lindex $tab $right]
	
	for {set i $left} {$i <= $right} {incr i} {
		
		if {[lindex $tab $i] < $piv} {
			
			incr border
			if {$border != $i} {
				set temp [lindex $tab $border]
				lset tab $border [lindex $tab $i] 
				lset tab $i $temp
				unset temp
			}
		}	
	}	
	
	incr border
		
		if {$border != $right} {
			set temp [lindex $tab $border]
			lset tab $border $piv 
			lset tab $right $temp
			unset temp
		}
	
	
	set tab [quickSort $tab $left [expr $border-1]]
	set tab [quickSort $tab [expr $border+1] $right]
	
	return $tab
}

set arr [quickSort $arr $left $right]

foreach i $arr {
	puts $i
}



