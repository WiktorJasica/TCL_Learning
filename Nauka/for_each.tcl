set kanal [open test.txt r]
set listA ""
while {![eof $kanal]} {
	lappend listA  [gets $kanal]
}

foreach i $listA {
	puts $i
}

