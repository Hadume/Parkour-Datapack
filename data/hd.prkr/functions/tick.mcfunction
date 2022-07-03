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
	## オブジェクトを設置
		execute as @e[type=minecraft:armor_stand,tag=HdP] at @s run function hd.prkr:egg/init/
	## スニークしていたら
		execute as @a[scores={HdP.SneakTime=1..}] at @s run function hd.prkr:sneak.time
	## メインハンドに卵を持っていたら
		execute as @a[nbt={SelectedItem:{tag:{HdP:{}}}}] at @s run function hd.prkr:egg/particle

## その他
	### リセット状態を解除
		execute as @a[tag=HdP.Reset] run tag @s remove HdP.Reset
	### リセット
		execute as @a[scores={HdP.Dropped.Paper=1..}] at @s run function hd.prkr:dropped.paper
		execute as @a[scores={HdP.DeathCount=1..}] run function hd.prkr:death.count
		execute as @a at @s if block ~ ~ ~ minecraft:structure_void run tag @s add HdP.Reset
	### ブロックを削除
		execute as @e[type=minecraft:marker,tag=HdP.Remove] at @s unless entity @a[distance=..16] unless block ~ ~ ~ minecraft:air run setblock ~ ~ ~ minecraft:air
	### アイテムを削除
		execute as @e[type=minecraft:item] if data entity @s Thrower at @s unless entity @a[distance=..16] run kill @s
	### リセット紙を渡す
		execute as @a unless data entity @s Inventory[{Slot:17b,tag:{HdP:{Reset:1b}}}] run item replace entity @s inventory.8 with minecraft:paper{display:{Name:'{"text":"パルクールリセット紙","color":"aqua","bold": true,"italic":false}',Lore:['[{"text":"捨てる","color":"gold","bold":true,"italic":false},{"text":"とパルクールのスタート地点に戻れるよ","color":"white","bold":false}]']},HdP:{Reset:1b}}
