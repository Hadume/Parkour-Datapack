#> prkr:tick
# 常時実行
# @within tag/function tick

## エリア
  ### 読み込み開始
    execute if score #Area.1 Global matches 0 if entity @a[predicate=prkr:area/1] store success score #Area.1 Global run scoreboard players add #Area.1.Loaded Global 1
    execute if score #Area.2 Global matches 0 if entity @a[predicate=prkr:area/2] store success score #Area.2 Global run scoreboard players add #Area.2.Loaded Global 1
    execute if score #Area.3 Global matches 0 if entity @a[predicate=prkr:area/3] store success score #Area.3 Global run scoreboard players add #Area.3.Loaded Global 1
    execute if score #Area.4 Global matches 0 if entity @a[predicate=prkr:area/4] store success score #Area.4 Global run scoreboard players add #Area.4.Loaded Global 1
  ### 初期化
    execute if score #Area.1 Global matches 1 as 200-0-200-0-1 unless score @s Area = #Area.1.Loaded Global run function prkr:area/1/
    execute if score #Area.2 Global matches 1 as 200-0-200-0-2 unless score @s Area = #Area.2.Loaded Global run function prkr:area/2/
    execute if score #Area.3 Global matches 1 as 200-0-200-0-3 unless score @s Area = #Area.3.Loaded Global run function prkr:area/3/
    execute if score #Area.4 Global matches 1 as 200-0-200-0-4 unless score @s Area = #Area.4.Loaded Global run function prkr:area/4/
  ### 常時
    execute unless score #Area.1 Global matches 0..1 run function prkr:area/1/tick
    execute unless score #Area.2 Global matches 0..1 run function prkr:area/2/tick
    execute unless score #Area.3 Global matches 0..1 run function prkr:area/3/tick
    execute unless score #Area.4 Global matches 0..1 run function prkr:area/4/tick
## リセット
  execute as @a[gamemode=adventure] at @s if predicate hd.prkr:reset run function prkr:reset
## リスタート
  execute as @a[gamemode=adventure,tag=HdP.Restart] at @s run function prkr:area/1/player/player
