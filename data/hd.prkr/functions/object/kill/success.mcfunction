#> hd.prkr:object/kill/success
# 
# @within function hd.prkr:object/kill/

## 伝える
	tellraw @s [{"text":"\n[パルクールシステム] "},{"text":"一番近くのオブジェクトを削除しました。","color":"red"}]
## 音を鳴らす
	playsound block.note_block.bass block @s ~ ~ ~ 1 0.5
## 一時使用Storageを削除
	data remove storage hd.p: Success
