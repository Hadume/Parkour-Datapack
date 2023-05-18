#> prkr:area/2/reset
# エリア２リセット
# @within function
#   prkr:area/2/tick
#   prkr:area/2/

## エリア状態リセット
  scoreboard players set $Area.2 Global 0
## ブロック削除
  execute as @e[type=marker,tag=HdP.Remove] at @s if predicate prkr:area/2 unless block ~ ~ ~ air run setblock ~ ~ ~ air
## ブロック設置
## MOB削除
  execute as @e[type=item] at @s if predicate prkr:area/2 run kill @s
  execute as @e[tag=Area2] at @s run tp @s ~ -3000 ~
  execute as @e[tag=Area2] at @s run kill @s
## スケジュール解消
