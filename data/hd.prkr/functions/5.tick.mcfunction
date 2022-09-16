#> hd.prkr:5.tick
#
# 4tickに一回実行
#
# @within function
#   hd.prkr:init
#   hd.prkr:5.tick

#> Tags
# @private
 #declare tag HdP.Laser

## Tagを外す
	execute as @a[tag=HdP.Warn] run tag @s remove HdP.Warn
	execute as @a[tag=HdP.Hit] run tag @s remove HdP.Hit
## レーザーを発射
	execute as @e[type=marker,tag=HdP.Laser] at @s if block ~ ~ ~ air positioned ^ ^ ^-1 run function hd.prkr:laser/loop
## ループ
	schedule function hd.prkr:5.tick 5t
