import UIKit

//arrays
var firstArray = ["şule", "serdar", "seda", "ayten"]
var secondArray = [3,7,0,1]

//burda elemanlar index no ile tutulur. 0'dan başlar
firstArray[0]
firstArray[3].uppercased()
firstArray[2] = "ayten"

// farklı veri tipleri ile dizi yaparsan as [Any] kullan.
// as -> casting, any -> any object
var differentTypeArray = [100, 4, "seda", true, false] as [Any]

differentTypeArray[2] // böyle dediğinde .ile özellik ararsan bulamazsın. çünkü tipini bilmiyor. bunu yeni bir değişkene atayıp o şekilde yapabilirsin.
var yeniDegisken = differentTypeArray[2] as! String //bu da opsiyonel demekmiş. sen yap ben bunun çalışacağından eminim demekmiş :)

//append: yeni eleman ekleme
differentTypeArray.append("şule")

// count: kaç eleman var onu sayar
differentTypeArray.count

//last: son eleman
differentTypeArray.last

//sort: küçükten büyüğe sıralar, harfler için de sıralar alfabetik sıra vs
var numbers = [9,3,5,7,1,8]
numbers.sort()


//------------------------------set
// içerisindeki bir eleman sadece bir defa barınabilir, tekrarlanamaz.
// karışık sıralanır, INDEX YOKTUR.

var NumberSet : Set = [1,1,1,1,2,3,4,5,6]

//mesela  e-ticaret sitelerinde kullanım örneği. hangi şehirlere sipariş gitmiş görmek istiyoruz ama şehirler tekrarlayabilir.
var orders = ["istanbul", "istanbul", "istanbul", "adana", "kastamonu"]
orders.count

var ordersSet = Set(orders)
ordersSet.count

//union: iki seti birleştirme
let firstSet : Set = [40,50,60]
let secondSet : Set = [50,60,70]

let finalSet = firstSet.union(secondSet)



//------------------------------dictionary
//key-value pairing vardır.

let fruits = ["apple", "banana", "watermelon", "cherry"]
let calories = [100, 150, 300, 220]
//bunu böyle yapmak yerine dictionary kullanılabilir.

var fruitsCaloriesDictionary = ["apple" : 100, "banana" : 150, "watermelon" : 300, "cherry" : 220]
fruitsCaloriesDictionary["apple"]

fruitsCaloriesDictionary.keys //anahtar kelimeleri gösterir.
fruitsCaloriesDictionary.values //değerleri gösterir.

fruitsCaloriesDictionary["banana"] = 200
