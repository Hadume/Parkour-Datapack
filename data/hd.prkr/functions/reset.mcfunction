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
 #declare tag HdP.Avoid.FallingDamage
#> Tags
# @private
# @within function prkr:**
 #declare tag HdP.NightVision
 #declare tag HdP.DolphinsGrace
 #declare tag HdP.FireResistance
## アイテムを消す
	clear @s
## エフェクトを消す
	effect clear @s
## エフェクトを付けなおす
	execute if entity @s[tag=HdP.NightVision] run effect give @s night_vision 1000000 0 true
	execute if entity @s[tag=HdP.DolphinsGrace] run effect give @s dolphins_grace 1000000 255 true
	execute if entity @s[tag=HdP.FireResistance] run effect give @s fire_resistance 1000000 0 true
## 体力空腹回復
	effect give @s instant_health 1 200 true
	effect give @s saturation 1 200 true
## 落下ダメージ対策
	effect give @s slow_falling 1 0 true
	tag @s add HdP.Avoid.FallingDamage
	schedule function hd.prkr:avoid.falling_damage 2t
