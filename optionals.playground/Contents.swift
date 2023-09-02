import UIKit

//bir değişkenin ya da verinin opsiyonel olup ya da olmaması demek, o veriye bir değer ataması yapılacak veya yapılmayacak demek.

var myName : String
myName = "şule"

myName // bu şu anda burada nil

var name : String? // bu artık string optional oldu. bu bu değişkene değer verilebilir de verilmeyebilir de demek. değer atanana kadar nil döner, hata vermez.



//mesela ileride kullanıcıdan bir değer aldığımızı düşünürsek;
var userNo = "20" // kullanıcıdan değer aldığımızda o bize her zaman string olarak döner. onu int'e çevirmemiz gerekir.
var result = Int(userNo)! * 5 // burda optional kullanmak zorundayız. ben eminim bunu int'e çevir diyoruz.
// ama mesela kullanıcı burda ya int değil de stirng değer girerse ne olur?
// ya da internet çöker veri girme esnasında vs vs
// o zaman fatal error olur ve uygulama çöker, kapanır.
// o yüzden yüzde yüz emin olduğun yerde bunu kullanman lazım. yukarda o kadar emin değiliz. kullanıcı her türlü şey girebilir.
// bu yüzden yukarıdaki kullanımı eledik.

// bu zorlamaya force unwrapping denir.
var truthResult = (Int(userNo) ?? 1) * 5 //kullanıcının verdiği değeri çevirmeye çalışıyorum ama eğer yapamazsa onun yerine default olarak bir değer atıyoruz. ama bu da her zaman için uygun olmaz. en çok if let kullanılır.

// ya da if let;
if let otherResult = Int(userNo){ //eğer bunu yapabilirsen, tanımlayabilirsen
    otherResult * 6
} // userNo int'e çevirilebiliyorsa yap demek gibi
else {
    print("sadece rakam girin lütfen!")
}


