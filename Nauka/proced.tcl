proc moja_procedura {kanal host port} {
    puts "Nadeszło połączenie z adresu $host na porcie $port."
    puts "Połączeniu przyporządkowano kanał $kanal."
}

socket -server moja_procedura 10000