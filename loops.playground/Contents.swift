import UIKit

5 == 5 //true
5 == 4 //false
5 != 4 //true

var x = 0
// x = x + 1 ile x += 1 aynı şey.


//while

print("started")
while x < 10 {
    print(x)
    x += 1
}
print("finished")



//for

var myArray = ["serdar", "seda", "şule", "ayten", "ismail"]

for name in myArray { //myArray dizisindeki elemanlar bitene kadar o elemanları tek tek name'e ata
    print(name)
}


for number in 1...10{ // 1den 10a kadar bir range oluştur demek
    print(number)
}


// AND &&
// OR ||

// and operatörünün true dönebilmesi için sağ tarafın da sol tarafın da doğru olması gerek.
// 3 == 3 && 4 == 4 true döner.

// veya'da ise herhangi bir tarafın doğru olması yeterli true dönmesi için
// 3 != 3 || 4 == 4 true döner



//if statements
var myAge = 60

if myAge < 15 {
    print("çok gençsin")
}
else if myAge > 20 && myAge < 30 {
    print("yirmili yaşlarındasın")
}
else {
    print("yaşlısın bro")
}


