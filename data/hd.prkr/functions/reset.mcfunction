#> hd.prkr:reset
#
# パルクールをリセットするための処理
#
# @within function
#   prkr:**
#   hd.prkr:damaged.by.arrow

#> Tags
# @private
 #declare tag HdP.Start
#> Tags
# @private
# @within function prkr:**
 #declare tag HdP.NightVision
 #declare tag HdP.DolphinsGrace
## アイテムを消す
	clear @s
## エフェクトを付けなおす
	execute if entity @s[tag=HdP.NightVision] run effect give @s minecraft:night_vision 1000000 0 true
	execute if entity @s[tag=HdP.DolphinsGrace] run effect give @s minecraft:dolphins_grace 1000000 255 true
## 体力空腹回復
	effect give @s minecraft:instant_health 1 200 true
	effect give @s minecraft:saturation 1 200 true
## 落下ダメージ対策
	effect give @s minecraft:slow_falling 1 0 true
