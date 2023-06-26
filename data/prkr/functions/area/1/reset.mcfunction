#> prkr:area/1/reset
# エリア１リセット
# @within function
#   prkr:area/1/tick
#   prkr:area/1/

## エリア状態リセット
  scoreboard players set $Area.1 Global 0
## ブロック削除
  execute as @e[type=marker,tag=HdP.Remove] at @s if predicate prkr:area/1 unless block ~ ~ ~ air run setblock ~ ~ ~ air
## ブロック設置
## MOB削除
  execute as @e[type=item] at @s if predicate prkr:area/1 run kill @s
  execute as @e[tag=Area1] at @s run function prkr:area/kill
## スケジュール解消
