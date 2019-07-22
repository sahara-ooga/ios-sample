//: [Previous](@previous)

import Foundation

var date = Date()

// 現在日付に時間を追加する
private func renderAddTimeInterval(){
    date.addTimeInterval(60 * 60 * 24)
    print(date)
}

renderAddTimeInterval()

// 現在日付に時間を追加し、追加した時間を戻す
private func renderAddingTimeInterval(){
    print(date.addingTimeInterval(60 * 60 * 24 * 2))
}
renderAddingTimeInterval()

// 引数で渡した日付が過去か未来かを列挙型で取得する
private func renderCompare(){
    var otherDate = Date()
    otherDate.addTimeInterval(60 * 60 * 24)
    
    print(date.compare(otherDate).rawValue)
}

renderCompare()

// 引数で渡した日付との差分を秒で取得する
private func renderTimeIntervalSince(){
    var otherDate = Date()
    otherDate.addTimeInterval(60 * 60 * 24)
    print(date.timeIntervalSince(otherDate))
}

renderTimeIntervalSince()
//: [Next](@next)
