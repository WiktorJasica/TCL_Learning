set array "9 1 2 4 5 7 8 6 3"

proc merge {tab left mid right} {
	set temp ""
	foreach i $tab {
	lappend temp $i
	}
	
	set p1 $left
	set p2 [expr ($mid + 1)]
	set current $left

	while {($p1 <= $mid) && ($p2 <= $right)} {
	
		if {[lindex $temp $p1] <= [lindex $temp $p2]} {
			lset tab $current [lindex $temp $p1]
			incr p1
		} else {
			lset tab $current [lindex $temp $p2]
			incr p2
		}
		incr current
	}
	
	while {$p1 <= $mid} {
		lset tab $current [lindex $temp $p1]
		incr current
		incr p1
	}
	
	unset temp
	
	return $tab
}

proc mergesort {tab left right} {
	
	if {$left >= $right} {
		return $tab
	}

	set mid [expr ($left + $right)/2]
	
	set tab [mergesort $tab $left $mid]
	set tab [mergesort $tab [expr $mid+1] $right]
	set tab [merge $tab $left $mid $right]
	
	return $tab
}
 
set array [mergesort $array 0 [expr ([llength $array] - 1)]]

foreach i $array {
puts $i
}