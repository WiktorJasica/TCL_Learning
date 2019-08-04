set tab "2 2"

proc firstDuplicate {a} {

foreach i $a {
        
      if {[lindex $a [expr [expr abs($i)]-1]] < 0 } {
        
            return [expr abs($i)]
        }
       lset a [expr [expr abs($i)]-1] -[lindex $a [expr [expr abs($i)]-1]]
	   
    }
    
return -1
}

puts [firstDuplicate $tab]