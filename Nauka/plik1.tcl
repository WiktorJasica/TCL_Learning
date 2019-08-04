set opcja "inna_opcja"
switch -glob -- $opcja {
    "-opcja1" {
        puts "Wybrano opcję 1"
    }
    "-opcja2" - "-opcja3" - "-opcja4" {
        puts "Wybrano opcję 3"
    }
    "-opcja5" {
        puts "Wybrano opcję 4 lub 5"
    }
    "*_opcja" {
        puts "Wybrano inną"
    }
    default {
        puts "Nie dopasowano żadnej opcji"
    }
}


