set kanal [open test.txt r]
set i 0
while {![eof $kanal]} {
	incr i
	puts "Oto linia $i z pliku test.txt: [gets $kanal]"
}
