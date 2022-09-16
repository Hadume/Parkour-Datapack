#> hd.prkr:coas/temp.block/couldnt
#
# 仮ブロックを設置出来なかったら
#
# @within function hd.prkr:coas/used

## 伝える
	tellraw @s [{"text":"[パルクールシステム] "},{"text": "既にブロックが設置されていたため、仮ブロックを設置できませんでした","color": "red"}]
## 音
	playsound block.note_block.bass block @s ~ ~ ~ 1 0.5
