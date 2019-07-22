//: Playground - noun: a place where people can play

import UIKit

private let tokyoTimeZone = "Asia/Tokyo"
private let jpLocal = "ja"
private var calendar = NSCalendar.current

/// TimeZoneを設定する
private func setupTimeZone() {
    calendar.timeZone = TimeZone(identifier: tokyoTimeZone)!
}

setupTimeZone()

/// Localeの設定
private func setupLocal() {
    calendar.locale = Locale(identifier: jpLocal)
}

setupLocal()

/// TimeZoneのIDを取得する
private func currentTimeZone() -> String {
    return calendar.timeZone.identifier
}

currentTimeZone()

/// 年を取得する
private func dateYear(date: Date) -> Int {
    return calendar.component(.year, from: date)
}

dateYear(date: Date())

/// 月を取得する
private func dateMonth(date: Date) -> Int {
    return calendar.component(.month, from: date)
}

dateMonth(date: Date())

/// 日を取得する
private func dateDay(date: Date) -> Int {
    return calendar.component(.day, from: date)
}

dateDay(date: Date())

/// 時間を取得する
private func dateHour(date: Date) -> Int {
    return calendar.component(.hour, from: date)
}

dateHour(date: Date())

/// 分を取得する
private func dateMinute(date: Date) -> Int {
    return calendar.component(.minute, from: date)
}

dateMinute(date: Date())

/// 秒を取得する
private func dateSecond(date: Date) -> Int {
    return calendar.component(.second, from: date)
}

dateSecond(date: Date())

/// 曜日を取得する
private func dateWeekDay(date: Date) -> Int {
    return calendar.component(.weekday, from: date)
}

dateWeekDay(date: Date())

/// 年月日、時分秒を取得する（まとめて設定できる）
private func dateSettings(date: Date) -> DateComponents {
    return calendar.dateComponents(Set<Calendar.Component>([.year,.month,.day,.hour,.minute,.second]),
                                   from: date)
}

dateSettings(date: Date())

/// 日付の差を取得する
private func diffDate(srcDate: Date, distDate: Date) -> Int {
    return calendar.dateComponents([.day], from: srcDate, to: distDate).day!
}
diffDate(srcDate: Date(), distDate: Date())

/// ["1月", "2月", "3月", "4月", "5月", "6月", "7月", "8月", "9月", "10月", "11月", "12月"]
private func renderMonthSymbols() {
    print(calendar.monthSymbols)
}

//renderMonthSymbols()

/// ["日曜日", "月曜日", "火曜日", "水曜日", "木曜日", "金曜日", "土曜日"]
private func renderWeekdaySymbols() {
    print(calendar.weekdaySymbols)
}

//renderWeekdaySymbols()

/// ["日", "月", "火", "水", "木", "金", "土"]
private func renderShortWeekdaySymbols() {
    print(calendar.shortWeekdaySymbols)
}

//renderShortWeekdaySymbols()

/// 該当の日付に更新する
private func updateDate(date: Date) -> DateComponents {
    
    var compontent = dateSettings(date: date)
    compontent.year = 2016
    compontent.month = 10
    compontent.day = 3
    return compontent
}

updateDate(date: Date())

/// 月の初日に更新する
private func updateFirstDate(date: Date) -> DateComponents {
    
    var compontent = dateSettings(date: date)
    compontent.day = 1
    return compontent
}

updateFirstDate(date: Date())

/// 日付を表示する
private func renderDate(date: Date) {
    
    let component = dateSettings(date: date)
    print("\(component.year!)/\(component.month!)/\(component.day!) \(component.hour!):\(component.minute!):\(component.second!)")
}

//renderDate(date: Date())

/// DateComponentsをDateに変換する
private func componentToDate(component: DateComponents) -> Date{
    return calendar.date(from: component)!
}

let oldDate = componentToDate(component:updateDate(date: Date()))
diffDate(srcDate: Date(), distDate: oldDate)

/// 該当月は、何週間あるか？
private func weekOfMonth(date: Date) -> Int {
    
    let compontent = updateFirstDate(date: date)
    let firstDateOfMonth = componentToDate(component: compontent)
    return calendar.range(of: .weekOfMonth, in: .month, for: firstDateOfMonth)!.count
}

weekOfMonth(date: Date())

/// 該当月の最終日は何日か？
private func endOfMonth(date: Date) -> Int {
    return calendar.range(of: .day, in: .month, for: date)!.count
}

endOfMonth(date: Date())
