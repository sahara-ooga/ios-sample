//: [Previous](@previous)

import Foundation

/*:
 [Swift3で特定の文字列の中から数字を抽出する方法](http://qiita.com/Kaki_Shoichi/items/67d60143b8babc7cbbef)
 */

let mixedString = "123abc456def"
let splitNumbers = (mixedString.components(separatedBy: NSCharacterSet.decimalDigits.inverted))
let number = splitNumbers.joined()

//: [Next](@next)
