# UIFont

## 概要
UIFontは、文字のフォントを変更するために利用します。


## 関連クラス
NSObject, NSCopying

## 主要プロパティ

|プロパティ名|型・アクセス権限|説明|サンプル|
|---|---|---|---|
|familyNames |String { get }| 使用できるフォントの一覧を取得する | UIFont.familyNames |
|pointSize | CGFloat { get }|現在のフォントサイズを取得する | font.pointSize |


## 主要メソッド

|メソッド名|説明|サンプル|
|---|---|---|
|init | フォントを指定する | UIFont(name: "HiraMinProN-W3", size: 20)|
|boldSystemFont | フォントをボールドに変更する | UIFont.boldSystemFont(ofSize: 20) |
|italicSystemFont | フォントをイタリックに変更する | UIFont.italicSystemFont(ofSize: 20)|
|withSize | フォントサイズを変更する | font.withSize(CGFloat( 30 )) |

## フレームワーク
UIKit.framework

## サポートOSバージョン
iOS2.0以上

## 開発環境
|category | Version| 
|---|---|
| Swift | 3.0.2 |
| XCode | 8.2 |
| iOS | 10.0〜 |

## 参考
https://developer.apple.com/reference/uikit/uifont

## appendix
サンプルアプリで取得した使用可能なフォントファミリ・フォント名

```
familyName: Copperplate
["Copperplate-Light", "Copperplate", "Copperplate-Bold"]

familyName: Heiti SC
[]

familyName: Kohinoor Telugu
["KohinoorTelugu-Regular", "KohinoorTelugu-Medium", "KohinoorTelugu-Light"]

familyName: Thonburi
["Thonburi", "Thonburi-Bold", "Thonburi-Light"]

familyName: Heiti TC
[]

familyName: Courier New
["CourierNewPS-BoldMT", "CourierNewPS-ItalicMT", "CourierNewPSMT", "CourierNewPS-BoldItalicMT"]

familyName: Gill Sans
["GillSans-Italic", "GillSans-Bold", "GillSans-BoldItalic", "GillSans-LightItalic", "GillSans", "GillSans-Light", "GillSans-SemiBold", "GillSans-SemiBoldItalic", "GillSans-UltraBold"]

familyName: Apple SD Gothic Neo
["AppleSDGothicNeo-Bold", "AppleSDGothicNeo-UltraLight", "AppleSDGothicNeo-Thin", "AppleSDGothicNeo-Regular", "AppleSDGothicNeo-Light", "AppleSDGothicNeo-Medium", "AppleSDGothicNeo-SemiBold"]

familyName: Marker Felt
["MarkerFelt-Thin", "MarkerFelt-Wide"]

familyName: Avenir Next Condensed
["AvenirNextCondensed-BoldItalic", "AvenirNextCondensed-Heavy", "AvenirNextCondensed-Medium", "AvenirNextCondensed-Regular", "AvenirNextCondensed-HeavyItalic", "AvenirNextCondensed-MediumItalic", "AvenirNextCondensed-Italic", "AvenirNextCondensed-UltraLightItalic", "AvenirNextCondensed-UltraLight", "AvenirNextCondensed-DemiBold", "AvenirNextCondensed-Bold", "AvenirNextCondensed-DemiBoldItalic"]

familyName: Tamil Sangam MN
["TamilSangamMN", "TamilSangamMN-Bold"]

familyName: Helvetica Neue
["HelveticaNeue-Italic", "HelveticaNeue-Bold", "HelveticaNeue-UltraLight", "HelveticaNeue-CondensedBlack", "HelveticaNeue-BoldItalic", "HelveticaNeue-CondensedBold", "HelveticaNeue-Medium", "HelveticaNeue-Light", "HelveticaNeue-Thin", "HelveticaNeue-ThinItalic", "HelveticaNeue-LightItalic", "HelveticaNeue-UltraLightItalic", "HelveticaNeue-MediumItalic", "HelveticaNeue"]

familyName: Gurmukhi MN
["GurmukhiMN-Bold", "GurmukhiMN"]

familyName: Times New Roman
["TimesNewRomanPSMT", "TimesNewRomanPS-BoldItalicMT", "TimesNewRomanPS-ItalicMT", "TimesNewRomanPS-BoldMT"]

familyName: Georgia
["Georgia-BoldItalic", "Georgia", "Georgia-Italic", "Georgia-Bold"]

familyName: Apple Color Emoji
["AppleColorEmoji"]

familyName: Arial Rounded MT Bold
["ArialRoundedMTBold"]

familyName: Kailasa
["Kailasa-Bold", "Kailasa"]

familyName: Kohinoor Devanagari
["KohinoorDevanagari-Light", "KohinoorDevanagari-Regular", "KohinoorDevanagari-Semibold"]

familyName: Kohinoor Bangla
["KohinoorBangla-Semibold", "KohinoorBangla-Regular", "KohinoorBangla-Light"]

familyName: Chalkboard SE
["ChalkboardSE-Bold", "ChalkboardSE-Light", "ChalkboardSE-Regular"]

familyName: Sinhala Sangam MN
["SinhalaSangamMN-Bold", "SinhalaSangamMN"]

familyName: PingFang TC
["PingFangTC-Medium", "PingFangTC-Regular", "PingFangTC-Light", "PingFangTC-Ultralight", "PingFangTC-Semibold", "PingFangTC-Thin"]

familyName: Gujarati Sangam MN
["GujaratiSangamMN-Bold", "GujaratiSangamMN"]

familyName: Damascus
["DamascusLight", "DamascusBold", "DamascusSemiBold", "DamascusMedium", "Damascus"]

familyName: Noteworthy
["Noteworthy-Light", "Noteworthy-Bold"]

familyName: Geeza Pro
["GeezaPro", "GeezaPro-Bold"]

familyName: Avenir
["Avenir-Medium", "Avenir-HeavyOblique", "Avenir-Book", "Avenir-Light", "Avenir-Roman", "Avenir-BookOblique", "Avenir-MediumOblique", "Avenir-Black", "Avenir-BlackOblique", "Avenir-Heavy", "Avenir-LightOblique", "Avenir-Oblique"]

familyName: Academy Engraved LET
["AcademyEngravedLetPlain"]

familyName: Mishafi
["DiwanMishafi"]

familyName: Futura
["Futura-CondensedMedium", "Futura-CondensedExtraBold", "Futura-Medium", "Futura-MediumItalic", "Futura-Bold"]

familyName: Farah
["Farah"]

familyName: Kannada Sangam MN
["KannadaSangamMN", "KannadaSangamMN-Bold"]

familyName: Arial Hebrew
["ArialHebrew-Bold", "ArialHebrew-Light", "ArialHebrew"]

familyName: Arial
["ArialMT", "Arial-BoldItalicMT", "Arial-BoldMT", "Arial-ItalicMT"]

familyName: Party LET
["PartyLetPlain"]

familyName: Chalkduster
["Chalkduster"]

familyName: Hoefler Text
["HoeflerText-Italic", "HoeflerText-Regular", "HoeflerText-Black", "HoeflerText-BlackItalic"]

familyName: Optima
["Optima-Regular", "Optima-ExtraBlack", "Optima-BoldItalic", "Optima-Italic", "Optima-Bold"]

familyName: Palatino
["Palatino-Bold", "Palatino-Roman", "Palatino-BoldItalic", "Palatino-Italic"]

familyName: Lao Sangam MN
["LaoSangamMN"]

familyName: Malayalam Sangam MN
["MalayalamSangamMN-Bold", "MalayalamSangamMN"]

familyName: Al Nile
["AlNile-Bold", "AlNile"]

familyName: Bradley Hand
["BradleyHandITCTT-Bold"]

familyName: PingFang HK
["PingFangHK-Ultralight", "PingFangHK-Semibold", "PingFangHK-Thin", "PingFangHK-Light", "PingFangHK-Regular", "PingFangHK-Medium"]

familyName: Trebuchet MS
["Trebuchet-BoldItalic", "TrebuchetMS", "TrebuchetMS-Bold", "TrebuchetMS-Italic"]

familyName: Helvetica
["Helvetica-Bold", "Helvetica", "Helvetica-LightOblique", "Helvetica-Oblique", "Helvetica-BoldOblique", "Helvetica-Light"]

familyName: Courier
["Courier-BoldOblique", "Courier", "Courier-Bold", "Courier-Oblique"]

familyName: Cochin
["Cochin-Bold", "Cochin", "Cochin-Italic", "Cochin-BoldItalic"]

familyName: Hiragino Mincho ProN
["HiraMinProN-W6", "HiraMinProN-W3"]

familyName: Devanagari Sangam MN
["DevanagariSangamMN", "DevanagariSangamMN-Bold"]

familyName: Oriya Sangam MN
["OriyaSangamMN", "OriyaSangamMN-Bold"]

familyName: Snell Roundhand
["SnellRoundhand-Bold", "SnellRoundhand", "SnellRoundhand-Black"]

familyName: Zapf Dingbats
["ZapfDingbatsITC"]

familyName: Bodoni 72
["BodoniSvtyTwoITCTT-Bold", "BodoniSvtyTwoITCTT-Book", "BodoniSvtyTwoITCTT-BookIta"]

familyName: Verdana
["Verdana-Italic", "Verdana-BoldItalic", "Verdana", "Verdana-Bold"]

familyName: American Typewriter
["AmericanTypewriter-CondensedLight", "AmericanTypewriter", "AmericanTypewriter-CondensedBold", "AmericanTypewriter-Light", "AmericanTypewriter-Semibold", "AmericanTypewriter-Bold", "AmericanTypewriter-Condensed"]

familyName: Avenir Next
["AvenirNext-UltraLight", "AvenirNext-UltraLightItalic", "AvenirNext-Bold", "AvenirNext-BoldItalic", "AvenirNext-DemiBold", "AvenirNext-DemiBoldItalic", "AvenirNext-Medium", "AvenirNext-HeavyItalic", "AvenirNext-Heavy", "AvenirNext-Italic", "AvenirNext-Regular", "AvenirNext-MediumItalic"]

familyName: Baskerville
["Baskerville-Italic", "Baskerville-SemiBold", "Baskerville-BoldItalic", "Baskerville-SemiBoldItalic", "Baskerville-Bold", "Baskerville"]

familyName: Khmer Sangam MN
["KhmerSangamMN"]

familyName: Didot
["Didot-Italic", "Didot-Bold", "Didot"]

familyName: Savoye LET
["SavoyeLetPlain"]

familyName: Bodoni Ornaments
["BodoniOrnamentsITCTT"]

familyName: Symbol
["Symbol"]

familyName: Menlo
["Menlo-Italic", "Menlo-Bold", "Menlo-Regular", "Menlo-BoldItalic"]

familyName: Bodoni 72 Smallcaps
["BodoniSvtyTwoSCITCTT-Book"]

familyName: Papyrus
["Papyrus", "Papyrus-Condensed"]

familyName: Hiragino Sans
["HiraginoSans-W3", "HiraginoSans-W6"]

familyName: PingFang SC
["PingFangSC-Ultralight", "PingFangSC-Regular", "PingFangSC-Semibold", "PingFangSC-Thin", "PingFangSC-Light", "PingFangSC-Medium"]

familyName: Myanmar Sangam MN
["MyanmarSangamMN-Bold", "MyanmarSangamMN"]

familyName: Euphemia UCAS
["EuphemiaUCAS-Italic", "EuphemiaUCAS", "EuphemiaUCAS-Bold"]

familyName: Telugu Sangam MN
[]

familyName: Bangla Sangam MN
[]

familyName: Zapfino
["Zapfino"]

familyName: Bodoni 72 Oldstyle
["BodoniSvtyTwoOSITCTT-Book", "BodoniSvtyTwoOSITCTT-Bold", "BodoniSvtyTwoOSITCTT-BookIt"]

30.0

```