# UINib demo

UIViewのサブクラスを2通りのやり方で設定した。

一方は、View内のUIパーツをコードで指定し(CustomizedView)、他方はView内のSubviewをxibファイルで指定した(NibCustomizedView)。

どちらも、IBDesignableを指定し、Storyboard上でプレビューできるようになっている。

## xibファイルで設定する場合

初期化時にxibファイルを読み込んでサブビューに配置する処理を記述する必要がある。

サンプルでは、`init(frame: CGRect)`・`init?(coder aDecoder: NSCoder)`・`func prepareForInterfaceBuilder()`時に以下のようなコードを実行している：

```swift
let nib = UINib(nibName: "NibCustomizedView", bundle: Bundle(for: type(of: self)))
let view = nib.instantiate(withOwner: self, options: nil).first as! UIView
view.frame = self.bounds
self.addSubview(view)
```
