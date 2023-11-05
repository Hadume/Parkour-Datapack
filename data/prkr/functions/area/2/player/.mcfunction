#> prkr:area/2/player/
# 
# @within function prkr:area/2/tick

## スコア設定
  scoreboard players set @s Area 20
## プレイヤー
  execute if entity @s[gamemode=adventure] run function prkr:area/2/player/player
