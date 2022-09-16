#> hd.prkr:coas/temp.block/remove
#
# 仮ブロックを削除
#
# @within function hd.prkr:coas/temp.block/tick

##
	execute unless block ~ ~ ~ air if entity @s[tag=HdP.TempBlock] run setblock ~ ~ ~ air
	execute unless block ~ ~ ~ light[level=0] if entity @s[tag=HdP.TempBlock.Reset] run setblock ~ ~ ~ light[level=0]
	execute unless block ~ ~ ~ light[level=1] if entity @s[tag=HdP.TempBlock.Reset.OnGround] run setblock ~ ~ ~ light[level=1]
## シュルカーを削除
	tp @s ~ -3000 ~
## 音
	execute as @a[gamemode=!adventure,gamemode=!survival,distance=..8] run playsound block.piston.extend block @s ~ ~ ~ 1 2
