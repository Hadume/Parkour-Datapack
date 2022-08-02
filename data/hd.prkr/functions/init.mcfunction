#> hd.prkr:init
#
# 初期化
#
# @within function hd.prkr:load

#> Storage
# @internal
# @within function prkr:**
 #declare storage hd.p:
## 初期化完了
	data modify storage hd.p: Init set value 1b
#> Scoreboard
# @internal
	scoreboard objectives add HdP.Temp dummy {"text": "一時使用"}
	scoreboard objectives add HdP.Timer dummy {"text": "タイマー"}
	scoreboard objectives add HdP.SneakTime minecraft.custom:minecraft.sneak_time {"text": "スニークしたら"}
	scoreboard objectives add HdP.Used.COAS minecraft.used:minecraft.carrot_on_a_stick {"text": "ニンジン棒使ったら"}
	scoreboard objectives add HdP.COAS.Stat dummy {"text": "ニンジン棒の状態"}
	scoreboard objectives add HdP.Dropped.Paper minecraft.dropped:minecraft.paper {"text": "紙捨てたら"}
	scoreboard objectives add HdP.DeathCount deathCount {"text": "死んだら"}
## Gamerule
	gamerule doMobLoot false
	gamerule doMobSpawning false
	gamerule doDaylightCycle false
	gamerule doWeatherCycle false
	gamerule randomTickSpeed 0
	gamerule doFireTick false
	gamerule commandBlockOutput false
	gamerule spawnRadius 0
	gamerule spectatorsGenerateChunks false
	gamerule doImmediateRespawn true
	gamerule freezeDamage false
	gamerule showDeathMessages false
	gamerule keepInventory true
	gamerule doTileDrops false
	gamerule mobGriefing false
	gamerule doLimitedCrafting true
## Time
	time set 6000
## Scheduleをする
	schedule clear hd.prkr:5.tick
	function hd.prkr:5.tick
