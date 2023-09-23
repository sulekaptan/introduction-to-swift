import UIKit

//guard
func kisiTanima1(ad:String){
    if ad == "Ahmet"{
        print("Merhaba Ahmet")
    }
    else{
        print("Tanınmayan kişi")
    }
}
kisiTanima1(ad: "Ahmet")


func kisiTanima2(ad:String){
    guard ad == "Ahmet" else { //bu koşul false olursa bu blok çalışır.
        print("Tanınmayan kişi")
        return //burda durur ve devamı çalışmaz.
    }
    print("Merhaba Ahmet")
}
kisiTanima2(ad: "Ahmet")




//hata ayıklama
/* 1. compiler error: editör hataları
let x = 10
x = 40 gibi */

/* 2.runtime error çalışma sırasında oluşan hatalar
 consoleda olur. */

enum Hatalar : Error{
    case sifiraBolunmeHatasi
}

func bolme(sayi1:Int, sayi2:Int) throws -> Int{ //throws, bunun hata oluşturabilecek bir fonksiyon olduğunu belirtiyor.
    if sayi2 == 0 {
        throw Hatalar.sifiraBolunmeHatasi
    }
    return sayi1 / sayi2
}

do{
    let sonuc = try bolme(sayi1: 10, sayi2: 5) //hata olma ihtimali yerine try yazarsın.
    print(sonuc)
}catch Hatalar.sifiraBolunmeHatasi{
    print("Sayı 0'a bölünemez.")
}

//ya da yukarıdakinin bir diğer yolu;
let sonuc1 = try? bolme(sayi1: 10, sayi2: 0) //eğer hata varsa sonuc1 nil olur.

if let temp = sonuc1{
    print(temp)
}else{
    print("Sayı sıfıra bölünemez")
}
