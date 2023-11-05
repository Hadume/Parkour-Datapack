#> prkr:area/1/player/
# 
# @within function prkr:area/1/tick

## スコア設定
  scoreboard players set @s Area 10
## プレイヤー
  execute if entity @s[gamemode=adventure] run function prkr:area/1/player/player
