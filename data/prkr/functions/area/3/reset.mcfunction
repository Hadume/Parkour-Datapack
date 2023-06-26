#> prkr:area/3/reset
# エリア３リセット
# @within function
#   prkr:area/3/tick
#   prkr:area/3/

## エリア状態リセット
  scoreboard players set $Area.3 Global 0
## ブロック削除
  execute as @e[type=marker,tag=HdP.Remove] at @s if predicate prkr:area/3 unless block ~ ~ ~ air run setblock ~ ~ ~ air
## ブロック設置
## MOB削除
  execute as @e[type=item] at @s if predicate prkr:area/3 run kill @s
  execute as @e[tag=Area3] at @s run function prkr:area/kill
## スケジュール解消
