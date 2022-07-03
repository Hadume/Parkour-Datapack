#> hd.prkr:tick
#
# 常時実行
#
# @within tag/function minecraft:tick

#> Tags
# @private
# @within function
#   prkr:**
#   hd.prkr:dropped.paper
#   hd.prkr:death.count
#   hd.prkr:damaged.by.arrow
 #declare tag HdP.Reset
## ギミック用
	### レーザーの音を鳴らす
		execute as @a[tag=HdP.Warn] at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 0.75 2

## 設計用
	## オブジェクト設置
		execute as @e[type=minecraft:armor_stand,tag=HdP] at @s run function hd.prkr:egg/init/
	## スニークしていたら
		execute as @a[scores={HdP.SneakTime=1..}] at @s run function hd.prkr:sneak.time
	## メインハンドに卵を持っていたら
		execute as @a[nbt={SelectedItem:{tag:{HdP:{Debug:1b}}}}] at @s run function hd.prkr:egg/particle
	## ニンジン棒を使ったら
		execute as @a[scores={HdP.Used.COAS=1..}] at @s run function hd.prkr:coas/used
	## 仮ブロック
		execute as @e[type=minecraft:shulker,tag=HdP.TempBlock] at @s run function hd.prkr:coas/temp.block/tick

## その他
	### リセット
		#### 状態解除
			execute as @a[tag=HdP.Reset] run tag @s remove HdP.Reset
		#### タグ追加
			execute as @a[scores={HdP.Dropped.Paper=1..}] at @s run function hd.prkr:dropped.paper
			execute as @a[scores={HdP.DeathCount=1..}] run function hd.prkr:death.count
			execute as @a[gamemode=adventure] at @s if block ~ ~ ~ #hd.prkr:reset run tag @s add HdP.Reset
	### 経験値リセット
		execute as @a[nbt=!{XpP:0.0f}] run experience set @s 0 points
		execute as @a unless entity @s[level=0] run experience set @s 0 levels
	### ブロック削除
		execute as @e[type=minecraft:marker,tag=HdP.Remove] at @s unless block ~ ~ ~ minecraft:air run function hd.prkr:remove.block
		execute as @e[type=minecraft:marker,tag=HdP.Remove,scores={HdP.Timer=1..}] at @s if block ~ ~ ~ minecraft:air run scoreboard players reset @s HdP.Timer
	### アイテム削除
		execute as @e[type=minecraft:item] if data entity @s Thrower at @s unless entity @a[distance=..16] run kill @s
	### リセット紙を渡す
		execute as @a[gamemode=adventure] unless data entity @s Inventory[{Slot:17b,tag:{HdP:{Reset:1b}}}] run item replace entity @s inventory.8 with minecraft:paper{display:{Name:'{"text":"パルクールリセット紙","color":"aqua","bold": true,"italic":false}',Lore:['[{"text":"捨てる","color":"gold","bold":true,"italic":false},{"text":"とパルクールのスタート地点に戻れるよ","color":"white","bold":false}]']},HdP:{Reset:1b}}
