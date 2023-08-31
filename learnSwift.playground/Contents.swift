import UIKit

//değişkenler
var greeting = "Hello, playground"

var myNumber = 10 * 5

var uzunDegiskenIsmi = 5 // camelCase
var uzun_degisken_ismi = 5 // snake_case

let myId = 477383 //bu sabittir, değiştirilemez

let pi = 3.14

// veri türleri: string - int - double - bool - float

greeting.append("1")
greeting.uppercased()

myNumber.isMultiple(of: 2) //10, 2nin çarpımı mı diye kontrol eder. true döner


//--------------------------------------------------------------------------


// : koyarsan type istiyor. mesela çok büyük sayı ile çalışırsan kapasite belirleyebilirsin.
// hafıza ile ilgili işler yapaarken vs kullanılabilir.
// mesela 3.14 küçük bir sayı bunu double tutup 64 bitlik yer kaplamaktansa Float belirtip 32 bitlik yere yerleştirebiliriz.

let myOtherNumber : Int32 = 50
let piFloat : Float = 3.14


// değeri belirtmeyeceğim belki sonradan internetten çekeceğim o yüzden şimdilik tutmak için de kullanılabilir.

// defining, tanımlama
let myString : String
// böyle yaparak initialization (değerini atama, başlatma) yapmamış oluyoruz.


//--------------------------------------------------------------------------


//type dönüştürme
var myNewNumber : Int
myNewNumber = 20

let myNewString : String
myNewString = String(myNewNumber)

let stringNumber = "400"
let integerNumber = Int(stringNumber)


//--------------------------------------------------------------------------



