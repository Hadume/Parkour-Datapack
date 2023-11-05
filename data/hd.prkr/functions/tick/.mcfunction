#> hd.prkr:tick/
# 常時実行
# @within tag/function minecraft:tick

#> Tags
# @private
# @within * prkr:**
 #declare tag LookingPlayer
## プレイヤーで常時実行
	execute as @a at @s run function hd.prkr:tick/player
## Marker で常時実行
	execute as @e[type=marker] at @s run function hd.prkr:tick/marker
## MOBがプレイヤーを見る
  execute as @e[tag=LookingPlayer] at @s anchored eyes facing entity @p eyes anchored feet run tp @s ~ ~ ~ ~ ~

## 設計用
	## オブジェクト設置
		execute as @e[type=armor_stand,tag=HdP] at @s run function hd.prkr:object/init
	## 仮ブロック
		execute as @e[type=shulker,tag=HdP.TempBlock] at @s run function hd.prkr:coas/temp.block/tick

## アイテム削除
	execute as @e[type=item] if data entity @s Thrower at @s unless entity @a[distance=..16] run kill @s
## 矢を消す
	execute as @e[type=#arrows,nbt={inGround:1b}] run kill @s
