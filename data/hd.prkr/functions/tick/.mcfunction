#> hd.prkr:tick/
#
# 常時実行
#
# @within tag/function minecraft:tick

#> Tags
# @private
 #declare tag HdP
 #declare tag HdP.Remove
 #declare tag HdP.CGArea
 #declare tag HdP.ASign
## プレイヤーで常時実行
	execute as @a at @s run function hd.prkr:tick/players

## 設計用
	## オブジェクト設置
		execute as @e[type=minecraft:armor_stand,tag=HdP] at @s run function hd.prkr:egg/init/
	## 仮ブロック
		execute as @e[type=minecraft:shulker,tag=HdP.TempBlock] at @s run function hd.prkr:coas/temp.block/tick

## その他
	### ブロック削除
		execute as @e[type=minecraft:marker,tag=HdP.Remove] at @s unless block ~ ~ ~ minecraft:air run function hd.prkr:remove.block
		execute as @e[type=minecraft:marker,tag=HdP.Remove,scores={HdP.Timer=1..}] at @s if block ~ ~ ~ minecraft:air run scoreboard players reset @s HdP.Timer
	### アイテム削除
		execute as @e[type=minecraft:item] if data entity @s Thrower at @s unless entity @a[distance=..16] run kill @s
	### 矢を消す
		execute as @e[type=#arrows,nbt={inGround:1b}] run kill @s
	### ゲームモード変更エリア
		execute as @e[type=minecraft:marker,tag=HdP.CGArea] at @s if entity @a[distance=..8] run function hd.prkr:egg/gamemode.area/particle
	### 看板の情報を取得
		execute as @e[type=minecraft:marker,tag=HdP.ASign] at @s run function hd.prkr:egg/attractive.sign/tick
