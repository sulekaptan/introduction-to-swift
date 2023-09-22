import UIKit

class ASinifi{
    var x = 10
    
    func metod(){
        print("Metod çalıştı")
    }
}

let a = ASinifi() //bu performans açısından daha iyi. sadece bir nesne oluşturuluyor.
print(a.x)
a.metod()

print(ASinifi().x) //virtual object - isimsiz nesne
ASinifi().metod()

//----------------------------------------------------------------

class BSinifi{
    static var x = 20
    
    static func metod(){
        print("Static Metod çalıştı")
    }
}

print(BSinifi.x)
BSinifi.metod()
