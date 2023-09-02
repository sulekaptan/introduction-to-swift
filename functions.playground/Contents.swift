import UIKit

// func
// fonksiyonlar girdi alır çıktı verir

func exampleFunc (){
    print("örnek")
}

exampleFunc() // bu fonksiyonu çalıştır demek

// parametreli fonksiyon
func myFunc (a : String){
    print(a)
}
myFunc(a: "şule")


func sum (x : Int , y : Int){
    print(x + y)
}
sum(x: 12, y: 67)

// çıktı nasıl olur? fonksiyonun sonucunda çıkacak sonucu bir değişkene atayabilmem için fonksiyonun o sonucu döndürmesi gerekir.
func calc (a: Int, b: Int) -> Int{ // bu fonk. bana bir Int döndürecek demek.
    return a * b //return kullanmak zorundasın ve bana int dönecek bir değer vermelisin.
}
var result = calc(a: 4, b: 7)
print("result: " , result)



func logicFunc (x: Int, y: Int) -> Bool {
    if x > y {
        return true
    }
    else {
        return false
    }
}
logicFunc(x: 5, y: 3)
