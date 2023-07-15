#> hd.prkr:tick/players
#
# プレイヤーで常時実行
#
# @within function hd.prkr:tick/

#> Tags
# @private
# @within function
#   prkr:**
#   hd.prkr:reset/*
 #declare tag HdP.Reset
 #declare tag HdP.CGArea
## ギミック用
	### レーザーの音を鳴らす
		execute if entity @s[tag=HdP.Warn] run playsound block.note_block.bit block @s ~ ~ ~ 0.75 2

## 設計用
	## メインハンドに卵を持っていたら
		execute if data entity @s {SelectedItem:{tag:{HdP:{Debug:1b}}}} run function hd.prkr:egg/particle
	## スニークしていたら
		execute if score @s HdP.SneakTime matches 1.. run function hd.prkr:sneak.time
	## ニンジン棒を使ったら
		execute if score @s HdP.Used.COAS matches 1.. run function hd.prkr:used.coas

## その他
	### リセット
		#### 状態解除
			execute if entity @s[tag=HdP.Reset] run tag @s remove HdP.Reset
			execute if entity @s[tag=HdP.Dead] run tag @s remove HdP.Dead
		#### タグ追加
			execute if score @s HdP.Dropped.Paper matches 1.. run function hd.prkr:reset/dropped.paper
			execute if score @s HdP.DeathCount matches 1.. run function hd.prkr:reset/death.count
	### 経験値リセット
		execute unless data entity @s {XpP:0.0f} run experience set @s 0 points
		execute unless entity @s[level=0] run experience set @s 0 levels
	### リセット紙を渡す
		execute if entity @s[gamemode=adventure] unless data entity @s Inventory[{Slot:17b,tag:{HdP:{Reset:1b}}}] run item replace entity @s inventory.8 with paper{display:{Name:'{"text":"パルクールリセット紙","color":"aqua","bold": true,"italic":false}',Lore:['[{"text":"捨てる","color":"gold","bold":true,"italic":false},{"text":"とパルクールのスタート地点に戻れるよ","color":"white","bold":false}]']},HdP:{Reset:1b}}
	### ゲームモードを変更
		execute if entity @e[type=marker,tag=HdP.CGArea,distance=..0.75] run function hd.prkr:egg/gamemode.area/change
