# gimp-script-fu-cut-circle-240

## Futures

* 240x240の画像を円形に切り抜き、PNGで保存する。

## Note

```
;画像一覧取得
(gimp-image-list)
;(8 #(8 7 6 5 4 3 2 1))

;レイヤー一覧取得
(gimp-image-get-layers 1)
;(1 #(5))
```

## Register Script

スクリプト保存場所

```
/Users/higuchi/Library/Application Support/GIMP/2.8/scripts/
```

メニュー

`フィルター` --> `Script-Fu` --> `スクリプトを再読み込み`

