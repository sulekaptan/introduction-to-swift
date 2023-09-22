import UIKit

class Ev{
    var pencereSayisi:Int?
    
    init(pencereSayisi:Int){
        self.pencereSayisi = pencereSayisi
    }
}

class Saray:Ev{
    var kuleSayisi:Int?
    
    init(kuleSayisi:Int, pencereSayisi:Int){ //x:Int de olabilir, illa pencereSayisi olmasına gerek yoktu.
        self.kuleSayisi = kuleSayisi //evin özelliklerini de koymam gerek. super metodu ile
        super.init(pencereSayisi: pencereSayisi) //buraya direkt 10 gibi rakam vermek doğru değil bunu dışardan isteyebilirz. o yüzden paramtre olarak verebiliriz.
    }
}

class Villa:Ev{
    var garajVarMi:Bool?
    
    init(garajVarMi:Bool,pencereSayisi:Int){
        self.garajVarMi = garajVarMi
        super.init(pencereSayisi: pencereSayisi)
    }
}


let topkapiSarayi = Saray(kuleSayisi: 5, pencereSayisi: 300)
let bogazVilla = Villa(garajVarMi: true, pencereSayisi: 30)

print(topkapiSarayi.kuleSayisi!)
print(topkapiSarayi.pencereSayisi!)

print(bogazVilla.garajVarMi!)
print(bogazVilla.pencereSayisi!)



//override
class Hayvan{
    func sesCikar(){
        print("Sesim yok")
    }
}
class Memeli:Hayvan{
}

class Kedi:Memeli{
    override func sesCikar() {
        print("miyav miyav")
    }
}
class Kopek:Memeli{
    override func sesCikar() {
        print("hav hav")
    }
}

let hayvan = Hayvan()
let memeli = Memeli()
let kedi = Kedi()
let kopek = Kopek()

hayvan.sesCikar() //kalıtım yok. kendi fonksiyonunu çalıştırdı.
memeli.sesCikar() //kalıtım var. üst sınıfın fonksiyonunu çalıştırdı.
kedi.sesCikar() //kalıtım var. kendi fonksiyonunu çalıştırdı.
kopek.sesCikar() //kalıtım var kendi fonksiyonunu çalıştırdı.


//tip dönüşümü

//upcasting
var ev = Saray(kuleSayisi: 3, pencereSayisi: 10) as Ev

//downcasting
var saray = Ev(pencereSayisi: 6) as? Saray

// tip kontrolü
if ev is Ev { //bu nesne Ev'den mi türedi diye kontrol eder.
    print("Nesne Ev sınıfındandır")
}else{
    print("Ev sınıfından değil.")
}


//protocol
protocol MyProtocol { //değişkenler taslak olarak oluşturulur.
    var degisken:Int {get set} //get: buna değer atayabiliriz. set: bundan değer okuyabiliriz.
    
    func metod1()
    
    func metod2() -> String
}


class ClassA : MyProtocol{
    var degisken: Int = 10
    func metod1() {
        print("metod 1 çalıştı")
    }
    func metod2() -> String {
        return "metod 2 çalıştı"
    }
}

//#ERROR: conform to protocol!!! Ben bu class'a bir protocol atadıysam onun özelliklerini de eklemem lazım!


//extension
extension Int{
    func carp(sayi:Int) -> Int{
        return self * sayi
    }
}
let x = 3.carp(sayi: 5) //var olan integer değişkenini genişletmiş olduk
print(x)


//closure
let ifade = { //bu parantez closure yapısını ifade ediyor.
    print("Merhaba")
}

ifade()
