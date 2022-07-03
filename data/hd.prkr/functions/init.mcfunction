#> hd.prkr:init
#
# 初期化
#
# @within function hd.prkr:load

#> Tags
# @internal
 #declare tag HdP
 #declare tag HdP.Laser
 #declare tag HdP.Start
 #declare tag HdP.Remove
#> Storage
# @internal
 #declare storage hd.p:
## 初期化完了
	data modify storage hd.p: Init set value 1b
#> Scoreboard
# @internal
	scoreboard objectives add HdP.Temp dummy
	scoreboard objectives add HdP.SneakTime minecraft.custom:minecraft.sneak_time
	scoreboard objectives add HdP.Dropped.Paper minecraft.dropped:minecraft.paper
	scoreboard objectives add HdP.DeathCount deathCount
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
## Scheduleをする
	schedule clear hd.prkr:5.tick
	function hd.prkr:5.tick
