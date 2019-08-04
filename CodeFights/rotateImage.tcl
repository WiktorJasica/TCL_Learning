array set a {
(0:0) 1
(0:1) 2
(0:2) 3
(1:0) 4
(1:1) 5
(1:2) 6
(2:0) 7
(2:1) 8
(2:2) 9
}

proc rotateImage {a} {

	array set b {}
    set el [expr [llength $a] -1]
    
    for {set i 0} {$i < [llength $a]} {incr i} {
    
        for {set j 0} {$j < [llength $a]} {incr j} {
            
            set temp a([expr ($el-$j)]:$i)
			puts $temp
            set b($i:$j) $temp      
        }
    }
    
    return b

}

rotateImage $a