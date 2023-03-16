#> prkr:area/5/reset
# エリア５リセット
# @within function
#   prkr:area/5/tick
#   prkr:area/5/

## エリア状態リセット
  data modify storage prkr: Area.5 set value 0b
## ブロック削除
  execute as @e[type=marker,tag=HdP.Remove] at @s if predicate prkr:area/5 unless block ~ ~ ~ air run setblock ~ ~ ~ air
## ブロック設置
## MOB削除
  execute as @e[type=item] at @s if predicate prkr:area/5 run kill @s
  execute as @e[tag=Area5] at @s run tp @s ~ -3000 ~
  execute as @e[tag=Area5] at @s run kill @s
## スケジュール解消
