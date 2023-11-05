#> hd.prkr:reset/avoid.falling_damage
# 落下ダメージを回避
# @within function hd.prkr:reset/

## 効果を消す
  execute as @a[tag=HdP.Avoid.FallingDamage] run effect clear @s slow_falling
## Tagを外す
  execute as @a[tag=HdP.Avoid.FallingDamage] run tag @s remove HdP.Avoid.FallingDamage
