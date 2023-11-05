#> hd.prkr:init
# 初期化
# @within function hd.prkr:load

#> Storage
# @internal
 #declare storage hd.p:
## 初期化完了
	data modify storage hd.p: Init set value 1b
#> Scoreboard
# @internal
	scoreboard objectives add HdP.Temp dummy {"text": "一時使用"}
	scoreboard objectives add HdP.Global dummy {"text": "全体使用"}
	scoreboard objectives add HdP.Const dummy {"text": "定数"}
	scoreboard objectives add HdP.Timer dummy {"text": "タイマー"}
	scoreboard objectives add HdP.SneakTime custom:sneak_time {"text": "スニークしたら"}
	scoreboard objectives add HdP.Used.COAS used:carrot_on_a_stick {"text": "ニンジン棒使ったら"}
	scoreboard objectives add HdP.Dropped.Paper dropped:paper {"text": "紙捨てたら"}
	scoreboard objectives add HdP.DeathCount deathCount {"text": "死んだら"}
	scoreboard objectives add HdP.COAS.Stat dummy {"text": "ニンジン棒の状態"}
## Gamerule
	gamerule announceAdvancements false
	gamerule blockExplosionDropDecay false
	gamerule commandBlockOutput false
	gamerule commandModificationBlockLimit 2147483647
	#gamerule disableElytraMovementCheck false
	gamerule disableRaids true
	gamerule doDaylightCycle false
	gamerule doEntityDrops false
	gamerule doFireTick false
	gamerule doImmediateRespawn true
	gamerule doInsomnia false
	gamerule doLimitedCrafting true
	gamerule doMobLoot false
	gamerule doMobSpawning false
	gamerule doPatrolSpawning false
	gamerule doTileDrops false
	gamerule doTraderSpawning false
	gamerule doVinesSpread false
	gamerule doWardenSpawning false
	gamerule doWeatherCycle false
	gamerule drowningDamage false
	#gamerule fallDamage true
	gamerule fireDamage false
	#gamerule forgiveDeadPlayers true
	gamerule freezeDamage false
	#gamerule globalSoundEvents true
	gamerule keepInventory true
	gamerule lavaSourceConversion true
	#gamerule logAdminCommands true
	gamerule maxCommandChainLength 2147483647
	gamerule maxEntityCramming 2147483647
	gamerule mobExplosionDropDecay false
	gamerule mobGriefing false
	gamerule naturalRegeneration false
	#gamerule playersSleepingPercentage 100
	gamerule randomTickSpeed 0
	#gamerule reducedDebugInfo false
	#gamerule sendCommandFeedback true
	gamerule showDeathMessages false
	gamerule snowAccumulationHeight 0
	gamerule spawnRadius 0
	#gamerule spectatorsGenerateChunks true
	gamerule tntExplosionDropDecay true
	#gamerule universalAnger false
	#gamerule waterSourceConversion true
## Gamemode
	defaultgamemode adventure
## Difficulty
	difficulty hard
## Time
	time set 6000t
