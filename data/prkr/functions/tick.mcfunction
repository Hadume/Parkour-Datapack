#> prkr:tick
# 常時実行
# @within tag/function tick

#> Tags
# @internal
 #declare tag LookingPlayer
## エリア
  ### 読み込み開始
    execute if score $Area.1 Global matches 0 if entity @a[predicate=prkr:area/1] store success score $Area.1 Global run scoreboard players add $Area.1.Loaded Global 1
    execute if score $Area.2 Global matches 0 if entity @a[predicate=prkr:area/2] store success score $Area.1 Global run scoreboard players add $Area.2.Loaded Global 1
    execute if score $Area.3 Global matches 0 if entity @a[predicate=prkr:area/3] store success score $Area.1 Global run scoreboard players add $Area.3.Loaded Global 1
    execute if score $Area.4 Global matches 0 if entity @a[predicate=prkr:area/4] store success score $Area.1 Global run scoreboard players add $Area.4.Loaded Global 1
    execute if score $Area.5 Global matches 0 if entity @a[predicate=prkr:area/5] store success score $Area.1 Global run scoreboard players add $Area.5.Loaded Global 1
    execute if score $Area.6 Global matches 0 if entity @a[predicate=prkr:area/6] store success score $Area.1 Global run scoreboard players add $Area.6.Loaded Global 1
    execute if score $Area.7 Global matches 0 if entity @a[predicate=prkr:area/7] store success score $Area.1 Global run scoreboard players add $Area.7.Loaded Global 1
    execute if score $Area.8 Global matches 0 if entity @a[predicate=prkr:area/8] store success score $Area.1 Global run scoreboard players add $Area.8.Loaded Global 1
  ### 初期化
    execute if score $Area.1 Global matches 1 as @e[type=marker,tag=Area.1] unless score @s Area = $Area.1.Loaded Global run function prkr:area/1/
    execute if score $Area.2 Global matches 1 as @e[type=marker,tag=Area.2] unless score @s Area = $Area.2.Loaded Global run function prkr:area/2/
    execute if score $Area.3 Global matches 1 as @e[type=marker,tag=Area.3] unless score @s Area = $Area.3.Loaded Global run function prkr:area/3/
    execute if score $Area.4 Global matches 1 as @e[type=marker,tag=Area.4] unless score @s Area = $Area.4.Loaded Global run function prkr:area/4/
    execute if score $Area.5 Global matches 1 as @e[type=marker,tag=Area.5] unless score @s Area = $Area.5.Loaded Global run function prkr:area/5/
    execute if score $Area.6 Global matches 1 as @e[type=marker,tag=Area.6] unless score @s Area = $Area.6.Loaded Global run function prkr:area/6/
    execute if score $Area.7 Global matches 1 as @e[type=marker,tag=Area.7] unless score @s Area = $Area.7.Loaded Global run function prkr:area/7/
    execute if score $Area.8 Global matches 1 as @e[type=marker,tag=Area.8] unless score @s Area = $Area.8.Loaded Global run function prkr:area/8/
  ### 常時
    execute unless score $Area.1 Global matches 0..1 run function prkr:area/1/tick
    execute unless score $Area.2 Global matches 0..1 run function prkr:area/2/tick
    execute unless score $Area.3 Global matches 0..1 run function prkr:area/3/tick
    execute unless score $Area.4 Global matches 0..1 run function prkr:area/4/tick
    execute unless score $Area.5 Global matches 0..1 run function prkr:area/5/tick
    execute unless score $Area.6 Global matches 0..1 run function prkr:area/6/tick
    execute unless score $Area.7 Global matches 0..1 run function prkr:area/7/tick
    execute unless score $Area.8 Global matches 0..1 run function prkr:area/8/tick
## プレイヤーを見る
  execute as @e[tag=LookingPlayer] at @s anchored eyes facing entity @p eyes anchored feet run tp @s ~ ~ ~ ~ ~
## リセット
  execute as @a[gamemode=adventure] at @s if predicate hd.prkr:reset run function prkr:reset
## リセット
  execute as @a[gamemode=adventure,tag=HdP.Reset] at @s run function prkr:area/1/player
