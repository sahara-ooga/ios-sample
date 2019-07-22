//: Playground - noun: a place where people can play

import UIKit

// 2階層の配列
let array = [[0, 1, 2, 3], [4, 5, 6]]

// 2セクション目の3番目の行
let indexPath = IndexPath(row: 2, section: 1)

// セクションと行を指定して値を取り出す
array[indexPath.section][indexPath.row]

// indexPathの要素数
indexPath.count


//:[[[Int]]]型に対して、３階層のindexPathで要素を指定する
let array2 = [array, [[10,11,12,13],[14,15,16],[17,18,19]]]

let nestedIndexPath = IndexPath(indexes: [1,2,2])
array2[nestedIndexPath[0]][nestedIndexPath[1]][nestedIndexPath[2]]
