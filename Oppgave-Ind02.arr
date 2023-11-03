#kode for å kunne bruke funksjonene fra dcic-2021
include shared-gdrive(
"dcic-2021",
"1wyQZj_L0qqV9Ekgr9au6RX2iqt2Ga8Ep")

#kode for å hente tabellen fra google docs
include gdrive-sheets
include data-source
ssid = "1RYN0i4Zx_UETVuYacgaGfnFcv4l9zd9toQTTdkQkj7g"
kWh-wealthy-consumer-data =
load-table: komponent, energi
source: load-spreadsheet(ssid).sheet-by-name("kWh", true)
    sanitize komponent using string-sanitizer
    sanitize energi using string-sanitizer
end

#funksjon som overfører data fra type String til type Number
fun energi-to-number(str :: String) -> Number:
  cases(Option) string-to-number(str):
    | some(a) => a
    | none => 0
  end
where:
energi-to-number("") is 0
energi-to-number("48") is 48
end

print(kWh-wealthy-consumer-data)

#endrer verdier (som er av type String) i kolonnen energi til tall (String til Number).
cleaned-table = transform-column(kWh-wealthy-consumer-data, "energi", energi-to-number)

print(cleaned-table)

#funksjonen som beregner energiforbruket for bilbruk
fun energy-per-day-car(distance-travelled-per-day, distance-per-unit-of-fuel, energy-per-unit-of-fuel):
  ( distance-travelled-per-day / 
    distance-per-unit-of-fuel ) * energy-per-unit-of-fuel
where:
  energy-per-day-car(15, 3, 4) is 20
end

distance-travelled-per-day2 = 15
distance-per-unit-of-fuel2 = 3
energy-per-unit-of-fuel2 = 4

#funksjonen sum sammen med funksjonen energy-per-day-car, som beregn det totale energiforbruket for en "typisk" innbygger i et industriland.
total-energy-consumption = sum(cleaned-table, "energi") + energy-per-day-car(distance-travelled-per-day2, distance-per-unit-of-fuel2, energy-per-unit-of-fuel2)

total-energy-consumption

#generer en visualisering av data fra tabellen
bar-chart(cleaned-table, "komponent", "energi")

#kode for å få korrekt energiforbruk for bil vist i visualiseringen
fun energi-to-number-with-car(str :: String) -> Number:
  cases(Option) string-to-number(str):
    | some(a) => a
    | none => energy-per-day-car(15, 3, 4)
  end
where:
  energi-to-number("") is 0
  energi-to-number("48") is 48
end

#Ny tabell med korrekt energiforbruk for bil
cleaned-table-with-car = transform-column(kWh-wealthy-consumer-data, "energi", energi-to-number-with-car)

print(cleaned-table-with-car)
bar-chart(cleaned-table-with-car, "komponent", "energi")
