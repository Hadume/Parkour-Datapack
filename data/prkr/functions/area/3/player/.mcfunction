#> prkr:area/3/player/
# 
# @within function prkr:area/3/tick

## スコア設定
  scoreboard players set @s Area 30
## プレイヤー
  execute if entity @s[gamemode=adventure] run function prkr:area/3/player/player
