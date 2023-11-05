#> hd.prkr:tick/player
# プレイヤーで常時実行
# @within function hd.prkr:tick/

#> Tags
# @private
 #declare tag HdP.CGArea
## 経験値リセット
	execute unless data entity @s {XpP:0.0f} run experience set @s 0 points
	execute unless entity @s[level=0] run experience set @s 0 levels
## リセット
	### 状態解除
		execute if entity @s[tag=HdP.Reset] run tag @s remove HdP.Reset
		execute if entity @s[tag=HdP.Dead] run tag @s remove HdP.Dead
	### タグ追加
		execute if score @s HdP.DeathCount matches 1.. run function hd.prkr:score/death.count
		execute if score @s HdP.Dropped.Paper matches 1.. run function hd.prkr:score/dropped.paper
## リセット紙を渡す
	execute if entity @s[gamemode=adventure,nbt=!{Inventory:[{Slot:17b,tag:{HdP:{Reset:1b}}}]}] run loot replace entity @s inventory.7 loot hd.prkr:reset.ticket
## ゲームモードを変更
	execute if entity @e[type=marker,tag=HdP.CGArea,distance=..0.75] run function hd.prkr:object/gamemode.area/change

## 設計用
	## メインハンドに卵を持っていたら
		execute if data entity @s {SelectedItem:{tag:{HdP:{Debug:1b}}}} run function hd.prkr:object/particle
	## スニークしていたら
		execute if score @s HdP.SneakTime matches 1.. run function hd.prkr:score/sneak.time
	## ニンジン棒を使ったら
		execute if score @s HdP.Used.COAS matches 1.. run function hd.prkr:score/used.coas
