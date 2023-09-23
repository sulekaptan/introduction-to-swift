import UIKit

var numaralar = [10,20,30]
var meyveler = [String]() //elemanları daha sonra ekleyeceğim demek.

//veri ekleme
meyveler.append("Elma") //0. index
meyveler.append("Muz") //1.
meyveler.append("Çilek") //2.

print(meyveler)

//güncelleme
meyveler[0] = "Yeni Elma"
print(meyveler)

//insert: bu istediğimiz yere ekler
meyveler.insert("Portakal", at: 1)
print(meyveler)

//veri okuma
print(meyveler[2])
let m = meyveler[0]
print(m)

//------------------------------
print("Boyut: \(meyveler.count)")
print("Boş kontrol: \(meyveler.isEmpty)")

//döngülerle kullanma
for meyve in meyveler{
    print(meyve)
}
for (indeks, meyve) in meyveler.enumerated(){
    print("\(indeks). -> \(meyve)")
}

//elaman silme
meyveler.remove(at: 1)
print(meyveler)

//tamamını silme
meyveler.removeAll()
print(meyveler)


//nesne tabanlı
class Ogrenciler{
    var no:Int?
    var ad:String?
    var sinif:String?
    
    init(no:Int,ad:String,sinif:String){
        self.no = no
        self.ad = ad
        self.sinif = sinif
    }
}

var o1 = Ogrenciler(no: 200, ad: "Şule", sinif: "12A")
var o2 = Ogrenciler(no: 350, ad: "Şevval", sinif: "11Z")
var o3 = Ogrenciler(no: 100, ad: "Uras", sinif: "9C")

var ogrencilerListesi = [Ogrenciler]()
ogrencilerListesi.append(o1)
ogrencilerListesi.append(o2)
ogrencilerListesi.append(o3)

for o in ogrencilerListesi{
    print("No: \(o.no!) - Ad: \(o.ad!) - Sınıfı: \(o.sinif!)")
}

//filtreleme
var f1 = ogrencilerListesi.filter({$0.no! > 100})
print("Filtreleme 1")
for o in f1{
    print("No: \(o.no!) - Ad: \(o.ad!) - Sınıfı: \(o.sinif!)")
}

var f2 = ogrencilerListesi.filter({$0.ad!.contains("u")})
print("Filtreleme 2")
for o in f2{
    print("No: \(o.no!) - Ad: \(o.ad!) - Sınıfı: \(o.sinif!)")
}

//sıralama - sorting
var s1 = ogrencilerListesi.sorted(by: {$0.no! > $1.no!})
print("Büyükten küçüğe sıralama")
for o in s1{
    print("No: \(o.no!) - Ad: \(o.ad!) - Sınıfı: \(o.sinif!)")
}
