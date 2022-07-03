#> hd.prkr:coas/stat
#
# ニンジン棒の状態を変更
#
# @within function hd.prkr:offhand

## スコアを追加
	scoreboard players add @s HdP.COAS.Stat 1
	execute if score @s HdP.COAS.Stat matches 2.. run scoreboard players set @s HdP.COAS.Stat 0
## 今の状態を通知
	execute if score @s HdP.COAS.Stat matches 0 run tellraw @s [{"text":"[パルクールシステム] "},{"text":"移動状態","color": "yellow","bold": true},{"text": "に変更しました。"}]
	execute if score @s HdP.COAS.Stat matches 1 run tellraw @s [{"text":"[パルクールシステム] "},{"text":"設置状態","color": "green","bold": true},{"text": "に変更しました。"}]
## 音
	playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 2
