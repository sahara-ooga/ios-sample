# UITextField

## 概要
UITextFieldは、ユーザから文字や数値などの入力を受け付けるときに利用します。

![UITextFieldのイメージ](https://github.com/stv-ekushida/ios-uikit-textfield-demo/wiki/images/tf.png)

## 関連クラス
UIView、UIControl

## 主要プロパティ

|プロパティ名|説明|サンプル|
|---|---|---|
|text | 入力された内容を参照する | textField.text |
|delegate | delegateを指定する <br>UITextFieldDelegateを利用するため | textField.delegate = self |
|placeholder | プレースホルダを設定する | textField.placeholder = "do something" |
|keyboardType | キーボードタイプを設定する | textField.keyboardType = .default |
|clearButtonMode | クリアボタンの表示を設定する | textField.clearButtonMode = .always|
|textAlignment | テキストのアライン（揃える）を設定する  | textField.textAlignment = .left|

## 主要メソッド

|メソッド名|説明|サンプル|
|---|---|---|
|becomeFirstResponder | 該当のテキストフィールドにフォーカスを当てる | textField.becomeFirstResponder() |
|resignFirstResponder | キーボードを閉じる | textField.resignFirstResponder() |

### UITextFieldDelegateプロトコルのメソッド

|メソッド名|説明|必須|
|---|---|---|
|textFieldShouldBeginEditing | テキストフィールドを編集する直前に呼び出される | - |
|textFieldShouldEndEditing | テキストフィールドの編集が終了する直前に呼び出される | - |
|textFieldDidBeginEditing | テキストフィールドを編集する直後に呼び出される | - | 
|textFieldDidEndEditing | テキストフィールドの編集が終了する直後に呼び出される | - | 
|textFieldShouldReturn | Returnボタンがタップされた時に呼ばれる | - | 
|textFieldShouldClear | クリアボタンがタップされた時に呼ばれる | - | 

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
https://developer.apple.com/reference/uikit/uitextfield
