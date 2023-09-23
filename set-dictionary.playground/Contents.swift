import UIKit

//set
var meyveler  = Set<String>()

//veri ekleme
meyveler.insert("Elma")
meyveler.insert("Muz")
meyveler.insert("Çilek")
print(meyveler)

for meyve in meyveler{
    print("Sonuç: \(meyve)")
}

print("Boyut: \(meyveler.count)")
print("Boş mu: \(meyveler.isEmpty)")

meyveler.remove("Elma")
print(meyveler)

meyveler.removeAll()



//dictionary
var iller = [Int:String]()

//veri ekleme
iller[16] = "Bursa"
iller[37] = "Kastamonu"
iller[34] = "İstanbul"
print(iller)

//veri okuma
print(iller[16]!)

//veri güncelleme
iller[34] = "Yeni İstanbul"
print(iller)

for (anahtar,deger) in iller{
    print("\(anahtar) -> \(deger)")
}
