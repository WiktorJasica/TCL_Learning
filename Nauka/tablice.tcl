
for {set i 0} {$i < 6} {incr i} {
		set tablica(indeks$i) wartosc$i
	}

foreach i [array names tablica *] {
	puts "$tablica($i)"
}
