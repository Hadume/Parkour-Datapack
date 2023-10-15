#> hd.prkr:init
# 初期化
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
	scoreboard objectives add HdP.Global dummy {"text": "全体使用"}
	scoreboard objectives add HdP.Const dummy {"text": "定数"}
	scoreboard objectives add HdP.Timer dummy {"text": "タイマー"}
	scoreboard objectives add HdP.SneakTime custom:sneak_time {"text": "スニークしたら"}
	scoreboard objectives add HdP.Used.COAS used:carrot_on_a_stick {"text": "ニンジン棒使ったら"}
	scoreboard objectives add HdP.COAS.Stat dummy {"text": "ニンジン棒の状態"}
	scoreboard objectives add HdP.Dropped.Paper dropped:paper {"text": "紙捨てたら"}
	scoreboard objectives add HdP.DeathCount deathCount {"text": "死んだら"}
#> ScoreHolder
# @internal
 #declare score_holder $HdP.Const.31743
 #declare score_holder $HdP.Const.2^16
	scoreboard players set $HdP.Const.31743 HdP.Const 31743
	scoreboard players set $HdP.Const.2^16 HdP.Const 65536
## Gamerule
	gamerule announceAdvancements false
	gamerule commandBlockOutput false
	gamerule commandModificationBlockLimit 2147483647
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
	gamerule fireDamage false
	gamerule freezeDamage false
	gamerule keepInventory true
	gamerule lavaSourceConversion true
	gamerule maxCommandChainLength 2147483647
	gamerule maxEntityCramming 2147483647
	gamerule mobGriefing false
	gamerule naturalRegeneration false
	gamerule randomTickSpeed 0
	gamerule showDeathMessages false
	gamerule spawnRadius 0
	gamerule tntExplosionDropDecay true
## Gamemode
	defaultgamemode adventure
## Difficulty
	difficulty hard
## Time
	time set 6000t
