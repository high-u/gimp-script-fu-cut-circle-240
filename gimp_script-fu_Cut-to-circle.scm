(
	define (
		CutToCircle
		img
		drawable
	)
	
	(let*
		(
			;filenameにファイル名を代入
			(filename (car (gimp-image-get-filename img)))
		)

		;Undoグループの開始
		(gimp-undo-push-group-start img)

		;アルファチャンネル追加
		(gimp-layer-add-alpha  drawable)

		;円選択
		(gimp-ellipse-select img 0 0 240 240 CHANNEL-OP-ADD TRUE FALSE 0)
		;選択範囲反転
		(gimp-selection-invert img)

		;削除
		(gimp-edit-clear drawable)

		;選択範囲の解除
		(gimp-selection-none img)
		
		;undoグループの終了
		(gimp-undo-push-group-end img)
		
		;出力
		(gimp-displays-flush)	
				
		;pngで保存
		(file-png-save 1 img drawable (string-append filename ".png")  (string-append filename ".png") 0 1 0 0 0 0 0)
	)
)

(script-fu-register
	"CutToCircle"
	"<Image>/Script-Fu/CutToCircle"
	"Cut To Circle 240x240"
	"high-u"
	""
	"2017-09-27"
	""
	SF-IMAGE "Image" 0
	SF-DRAWABLE "Drawable" 0
)