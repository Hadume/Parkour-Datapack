#> prkr:template/mob
# MOBのテンプレート
# @within 

## 描画用Entity
  summon villager ~ ~ ~ {NoAI:1b,Invulnerable:1b,PersistenceRequired:1b,Tags:["Area","LookingPlayer"]}
## 当たり判定付きブロック
  execute positioned ~ ~ ~ run summon armor_stand ~ ~-0.7406250089406968 ~ {NoGravity:1b,Invisible:1b,Invulnerable:1b,Small:1b,Silent:1b,Passengers:[{id:"shulker",ActiveEffects:[{Id:14,Amplifier:0b,Duration:-1,ShowParticles:0b}],Invulnerable:1b,NoGravity:1b,NoAI:1b,Silent:1b,Tags:["Area"]},{id:"block_display",block_state:{Name:"block"},Tags:["Area","Init"]}],Tags:["Area"]}
