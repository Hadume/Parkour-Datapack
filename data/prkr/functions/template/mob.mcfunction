#> prkr:template/mob
# MOBのテンプレート
# @within 

## 描画用Entity
  summon villager ~ ~ ~ {Invulnerable:1b,NoAI:1b,PersistenceRequired:1b,Tags:["LookingPlayer","Area"]}
## 当たり判定付きブロック
  execute positioned ~ ~ ~ run summon armor_stand ~ ~-0.7406250089406968 ~ {Rotation:[0.0f,0.0f],NoGravity:0b,Invulnerable:1b,Silent:1b,Invisible:1b,NoBasePlate:1b,Pose:{Head:[180f,0f,0f]},Small:1b,Passengers:[{id:"shulker",Rotation:[0.0f,0.0f],Invulnerable:1b,NoGravity:1b,Silent:1b,NoAI:1b,ActiveEffects:[{Id:14,Amplifier:0b,Duration:-1,ShowParticles:0b}],Tags:["Area"]},{id:"block_display",block_state:{Name:"block"},Tags:["Init","Area"]}],Tags:["Area"]}
  ### BlockDisplay
    #### 
      execute as @e[type=block_display,tag=Init] run data modify entity @s transformation.translation set value [-0.5f,0.0f,-0.5f]
      execute as @e[type=block_display,tag=Init] run data modify entity @s transformation.scale set value [1.0f,1.0f,1.0f]
    #### 初期化完了
      tag @e[type=block_display,tag=Init] remove Init
