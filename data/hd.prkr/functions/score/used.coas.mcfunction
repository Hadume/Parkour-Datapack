#> hd.prkr:score/used.coas
# ニンジン棒を使ったら
# @within function hd.prkr:tick/players

## スーパーニンジン棒を使ったら
  execute if data entity @s SelectedItem.tag.HdP.COAS run function hd.prkr:coas/used
## スコアをリセット
	scoreboard players reset @s HdP.Used.COAS
