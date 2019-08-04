puts [time {
    for {set i 0} {$i < 1000} {incr i} {
        set x $i
    }
}]

puts [time {
    set i 0
    while {$i < 1000} {
        set x $i
        incr i
    }
}]