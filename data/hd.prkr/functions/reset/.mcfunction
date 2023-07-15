#> hd.prkr:reset/
# パルクールをリセットするための処理
# @within function prkr:**

#> Tags
# @private
 #declare tag HdP.Start
#> Tags
# @private
# @within function prkr:**
 #declare tag HdP.Move.Start
 #declare tag HdP.NightVision
 #declare tag HdP.DolphinsGrace
 #declare tag HdP.FireResistance
 #declare tag HdP.Invisibility
 #declare tag HdP.Weakness
 #declare tag HdP.Levitation
 #declare tag HdP.Avoid.FallingDamage
## アイテムを消す
	clear @s
## エフェクトを消す
	effect clear @s
## エフェクトを付けなおす
	execute if entity @s[tag=HdP.NightVision] run effect give @s night_vision infinite 0 true
	execute if entity @s[tag=HdP.DolphinsGrace] run effect give @s dolphins_grace infinite 255 true
	execute if entity @s[tag=HdP.FireResistance] run effect give @s fire_resistance infinite 0 true
	execute if entity @s[tag=HdP.Invisibility] run effect give @s invisibility infinite 0 true
	execute if entity @s[tag=HdP.Weakness] run effect give @s weakness infinite 255 true
	execute if entity @s[tag=HdP.Levitation] run effect give @s levitation infinite 255 true
## 体力空腹回復
	effect give @s instant_health infinite 200 true
	effect give @s saturation infinite 200 true
## スタート地点へ
	execute if entity @s[tag=HdP.Move.Start] run tp @s @e[type=marker,tag=HdP.Start,limit=1]
	execute if entity @s[tag=HdP.Move.Start] run tag @s remove HdP.Move.Start
## 落下ダメージ対策
	effect give @s slow_falling 1 0 true
	tag @s add HdP.Avoid.FallingDamage
	schedule function hd.prkr:reset/avoid.falling_damage 2t
