import UIKit

class Fonksiyonlar{
    //geri dönüş değeri olmayan (void)
    func selamla1(){ //-> işareti kullanmadığımız için değer döndürmüyor.
        let sonuc = "Merhaba Ahmet"
        print(sonuc)
    }
    
    //geri dönüş değeri olan (return)
    func selamla2() -> String {
        let sonuc = "Merhaba Mehmet"
        return sonuc
    }
    
    //parametreli fonk
    func selamla3 (isim:String){
        let sonuc = "Merhaba \(isim)"
        print(sonuc)
    }
    
    func toplama(sayi1:Int, sayi2:Int) -> Int{
        let toplam = sayi1 + sayi2
        return toplam
    }
    
    //overloading!!!!
    func carpma(sayi1:Int, sayi2:Int) {
        print("Çarpma: \(sayi1 * sayi2)")
    }
    
    func carpma(sayi1:Double, sayi2:Double) {
        print("Çarpma: \(sayi1 * sayi2)")
    }
    
    func carpma(sayi1:Int, sayi2:Int, isim:String) {
        print("Çarpma: \(sayi1 * sayi2) - İşlemi yapan: \(isim)")
    }
    
}

//yukardaki selamla1 fonk. erişmek için önce class'tan bir nesne oluşturmamız lazım.
let f = Fonksiyonlar()
f.selamla1()
let gelenSonuc = f.selamla2()
print(gelenSonuc)
f.selamla3(isim: "Şule")
let gelenToplam = f.toplama(sayi1: 34, sayi2: 5)
print(gelenToplam)


