#> prkr:area/2/reset
# エリア２リセット
# @within function
#   prkr:area/2/tick
#   prkr:area/2/

## エリア状態リセット
  scoreboard players set $Area.2 Global 0
## ブロック削除
## ブロック設置
## MOB削除
  execute as @e[type=item] at @s if predicate prkr:area/2 run kill @s
  execute as @e[tag=Area2] at @s run function prkr:area/kill
## スケジュール解消
