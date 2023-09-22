import UIKit

//composition
class Kategoriler{
    var kategori_id:Int?
    var kategori_ad:String?
    
    init(kategori_id:Int, kategori_ad:String){
        self.kategori_id = kategori_id
        self.kategori_ad = kategori_ad
    }
}

class Yonetmenler{
    var yonetmen_id:Int?
    var yonetmen_ad:String?
    
    init(yonetmen_id:Int, yonetmen_ad:String){
        self.yonetmen_id = yonetmen_id
        self.yonetmen_ad = yonetmen_ad
    }
}

class Filmler{
    var film_id:Int?
    var film_ad:String?
    var film_yil:Int?
    var kategori:Kategoriler?
    var yonetmen:Yonetmenler?
    
    init(film_id:Int, film_ad:String, film_yil:Int, kategori:Kategoriler, yonetmen:Yonetmenler){
        self.film_id = film_id
        self.film_ad = film_ad
        self.film_yil = film_yil
        self.kategori = kategori
        self.yonetmen = yonetmen
    }
}

let k1 = Kategoriler(kategori_id: 1, kategori_ad: "Dram")
let k2 = Kategoriler(kategori_id: 2, kategori_ad: "Bilim Kurgu")

let y1 = Yonetmenler(yonetmen_id: 1, yonetmen_ad: "Nuri Bilge Ceylan")
let y2 = Yonetmenler(yonetmen_id: 2, yonetmen_ad: "Quentin Tarantino")

let f1 = Filmler(film_id: 1, film_ad: "Django", film_yil: 2013, kategori: k2, yonetmen: y2)
print("Film id: \(f1.film_id!), Film adı: \(f1.film_ad!), film yılı: \(f1.film_yil!), kategori: \(f1.kategori!.kategori_ad!), yönetmen: \(f1.yonetmen!.yonetmen_ad!)")


//enumaration
enum KonserveBoyut{
    case kucuk
    case orta
    case buyuk
}

func ucretHesapla(boyut:KonserveBoyut, adet:Int){
    switch boyut{
        case KonserveBoyut.kucuk: print("Fiyat: \(adet * 13)")
        case .orta: print("Fiyat: \(adet * 15)")
        case .buyuk: print("Fiyat: \(adet * 17)")
    }
}

ucretHesapla(boyut: .orta, adet: 2)

