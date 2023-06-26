#> prkr:area/6/reset
# エリア６リセット
# @within function
#   prkr:area/6/tick
#   prkr:area/6/

## エリア状態リセット
  scoreboard players set $Area.6 Global 0
## ブロック削除
  execute as @e[type=marker,tag=HdP.Remove] at @s if predicate prkr:area/6 unless block ~ ~ ~ air run setblock ~ ~ ~ air
## ブロック設置
## MOB削除
  execute as @e[type=item] at @s if predicate prkr:area/6 run kill @s
  execute as @e[tag=Area6] at @s run function prkr:area/kill
## スケジュール解消
