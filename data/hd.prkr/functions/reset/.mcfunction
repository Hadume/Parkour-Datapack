#> hd.prkr:reset/
# パルクールをリセットするための処理
# @within function prkr:**

## アイテムを消す
	clear @s
## エフェクトを消す
	effect clear @s
## 体力空腹回復
	effect give @s instant_health infinite 200 true
	effect give @s saturation infinite 200 true
## エフェクトを付けなおす
	execute if entity @s[tag=HdP.NightVision] run effect give @s night_vision infinite 0 true
	execute if entity @s[tag=HdP.DolphinsGrace] run effect give @s dolphins_grace infinite 255 true
	execute if entity @s[tag=HdP.FireResistance] run effect give @s fire_resistance infinite 0 true
	execute if entity @s[tag=HdP.Invisibility] run effect give @s invisibility infinite 0 true
	execute if entity @s[tag=HdP.Weakness] run effect give @s weakness infinite 255 true
	execute if entity @s[tag=HdP.Levitation] run effect give @s levitation infinite 255 true
## 落下ダメージを回避
	effect give @s slow_falling 1 0 true
	tag @s add HdP.Avoid.FallingDamage
	schedule function hd.prkr:reset/avoid.falling_damage 2t
