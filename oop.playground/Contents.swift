import UIKit

//class oluşturma
class Araba{ //bu bir taslak, buna özellikler veriyoruz.
  var renk:String?
  var hiz:Int?
  var calisiyorMu:Bool?
    
    init(){
        //ilk olarak bu çalışır. bu boş init
        //daha sonra burada farklı işler yaptırabiliriz.
        print("Boş init çalıştı")
    }
    
    init(renk:String, hiz:Int, calisiyorMu:Bool?){ //dışardan bu değerleri istiyorum
        //değer atama işlemini kolaylaştıran bir yapı
        /* bu yukardaki renk */ //renk = renk /*bu init'e verdiğim renk*/
        self.renk = renk //self: bulunduğu sınıfı temsil eder
        self.hiz = hiz //araba class'ındaki hıza dışardan gelen hızı ata
        self.calisiyorMu = calisiyorMu //shadowing!!!!
        print("Dolu init çalıştı")
        
    }
    
    func calistir(){ // bir fonksihyonla class'ın nesnelerinin içeriğini değiştirebilirsek buna side effect denir. bu çalışınca nesneler değişiyor.
        calisiyorMu = true
        hiz = 5
    }
    
    func durdur(){
        calisiyorMu = false
        hiz = 0
    }
    
    func hizlan(kacKm:Int){
        hiz! += kacKm //!: bu bir optionaldı ben bunu normal bir değere çevirdim. unwrap yaptım
    }
    
    func yavasla(kacKm:Int){
        hiz! -= kacKm
    }
    
    func bilgiAl(){
        print("-------------------")
        print("Renk         : \(renk!)") //unwrap
        print("Hız          : \(hiz!)")
        print("Çalışıyor Mu : \(calisiyorMu!)")
    }
}

//nesne oluşturma
//var bmw = Araba()
var sahin = Araba()
var bmw = Araba(renk: "Mavi", hiz: 30, calisiyorMu: true)


//değer atama
bmw.renk = "Kırmızı"
bmw.hiz = 200
bmw.calisiyorMu = true

sahin.renk = "Siyah"
sahin.hiz = 0
sahin.calisiyorMu = false

//değer okuma
/* print("-------------------")
print("Renk         : \(bmw.renk!)") //unwrap
print("Hız          : \(bmw.hiz!)")
print("Çalışıyor Mu : \(bmw.calisiyorMu!)")

print("-------------------")
print("Renk         : \(sahin.renk!)")
print("Hız          : \(sahin.hiz!)")
print("Çalışıyor Mu : \(sahin.calisiyorMu!)") */

bmw.bilgiAl()
bmw.durdur()
bmw.bilgiAl()
bmw.calistir()
bmw.bilgiAl()
bmw.hizlan(kacKm: 50)
bmw.bilgiAl()
bmw.yavasla(kacKm: 12)
bmw.bilgiAl()

sahin.bilgiAl()
