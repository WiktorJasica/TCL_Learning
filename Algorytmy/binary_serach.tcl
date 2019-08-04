set mainTab "{12} {5} {10} {13} {4} {7} {20}"
set sortTab [lsort -integer $mainTab]
set n [llength $sortTab]
puts "Podaj liczbe: " 
set nr [gets stdin]

proc binary_serch {tab n nr} {

	set left 0
	set right [expr $n - 1]

	if {$n == 0} {
		return FALSE
	}
	
	while {$left <= $right} {
	
	set p [expr ($right + $left)/2]
	
		if {[lindex $tab $p] == $nr} {
			return TRUE
		} 
		if {[lindex $tab $p] < $nr} {
			set left [expr $p + 1]
		} else {
			set right [expr $p - 1]
		}
	}
	return FALSE
} 

puts [binary_serch $sortTab $n $nr]