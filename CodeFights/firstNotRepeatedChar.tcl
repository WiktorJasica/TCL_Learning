set var "lolek"

proc notRepeat {s} {

	
    foreach i [split $s ""] {
        if {[string last $i $s] == [string first $i $s]} {
            return $i
        }
    }
    return "_"
	
}

puts [notRepeat $var]