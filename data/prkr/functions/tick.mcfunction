#> prkr:tick
# 常時実行
# @within tag/function tick

#> Tags
# @internal
 #declare tag LookingPlayer
## エリア
  ### 初期化
    execute if data storage prkr: {Area:{1:0b}} if entity @a[predicate=prkr:area/1] run function prkr:area/1/
    execute if data storage prkr: {Area:{2:0b}} if entity @a[predicate=prkr:area/2] run function prkr:area/2/
    execute if data storage prkr: {Area:{3:0b}} if entity @a[predicate=prkr:area/3] run function prkr:area/3/
    execute if data storage prkr: {Area:{4:0b}} if entity @a[predicate=prkr:area/4] run function prkr:area/4/
    execute if data storage prkr: {Area:{5:0b}} if entity @a[predicate=prkr:area/5] run function prkr:area/5/
  ### 常時
    execute unless data storage prkr: {Area:{1:0b}} run function prkr:area/1/tick
    execute unless data storage prkr: {Area:{2:0b}} run function prkr:area/2/tick
    execute unless data storage prkr: {Area:{3:0b}} run function prkr:area/3/tick
    execute unless data storage prkr: {Area:{4:0b}} run function prkr:area/4/tick
    execute unless data storage prkr: {Area:{5:0b}} run function prkr:area/5/tick
## プレイヤーを見る
  execute as @e[tag=LookingPlayer] at @s facing entity @p feet run tp @s ~ ~ ~ ~ ~
## リセット
  execute as @a[gamemode=adventure] at @s if predicate hd.prkr:reset run function prkr:reset
## リセット
  execute as @a[gamemode=adventure,tag=HdP.Reset] at @s run function prkr:area/1/player
