execute as @e[type=marker,name="mvm_EnemySpawn"] run scoreboard players operation @s mvm_mapDiff = @s mvm_map
scoreboard players operation @e[type=marker,name="mvm_EnemySpawn"] mvm_mapDiff -= @s mvm_map

execute if block ~1 ~ ~ minecraft:cyan_wool run execute as @e[type=marker,name="mvm_EnemySpawn",scores={mvm_mapDiff=0}] at @s run summon pillager ~ ~ ~ {CustomName:'"Moron"',Tags:[mvm_enemy]}
execute if block ~1 ~ ~ minecraft:green_wool run execute as @e[type=marker,name="mvm_EnemySpawn",scores={mvm_mapDiff=0}] at @s run summon zombie ~ ~ ~ {CustomName:'"Bat Scout"',Tags:[mvm_enemy,mvm_health125],HandItems:[{id:"minecraft:bone",Count:1b}],Attributes:[{Name:"generic.follow_range", Base:1000.0}],DeathLootTable:"minecraft.empty"}
execute if block ~1 ~ ~ minecraft:white_wool run execute as @e[type=marker,name="mvm_EnemySpawn",scores={mvm_mapDiff=0}] at @s run summon pillager ~ ~ ~ {CustomName:'"I HAVE A GUN!!!"',Tags:[mvm_enemy,mvm_health125],HandItems:[{id:"minecraft:crossbow",Count:1b}],Attributes:[{Name:"generic.follow_range", Base:1000.0}],DeathLootTable:"minecraft.empty"}

execute if block ~1 ~ ~ minecraft:sponge run execute as @e[type=marker,name="mvm_EnemySpawn",scores={mvm_mapDiff=0}] at @s run summon zombie ~ ~ ~ {CustomName:'"Giant Rapid Fire Demoman"',Tags:[mvm_enemy,mvm_health3000,mvm_giant],HandItems:[{id:"minecraft:air"}],Attributes:[{Name:"generic.follow_range", Base:1000.0}],DeathLootTable:"minecraft.empty"}

execute if block ~1 ~ ~ minecraft:white_stained_glass run scoreboard players set $maxEnemies mvm_vars 1
execute if block ~1 ~ ~ minecraft:light_gray_stained_glass run scoreboard players set $maxEnemies mvm_vars 2
execute if block ~1 ~ ~ minecraft:gray_stained_glass run scoreboard players set $maxEnemies mvm_vars 3
execute if block ~1 ~ ~ minecraft:black_stained_glass run scoreboard players set $maxEnemies mvm_vars 4
execute if block ~1 ~ ~ minecraft:brown_stained_glass run scoreboard players set $maxEnemies mvm_vars 5
execute if block ~1 ~ ~ minecraft:red_stained_glass run scoreboard players set $maxEnemies mvm_vars 6
execute if block ~1 ~ ~ minecraft:orange_stained_glass run scoreboard players set $maxEnemies mvm_vars 10
execute if block ~1 ~ ~ minecraft:yellow_stained_glass run scoreboard players set $maxEnemies mvm_vars 12
execute if block ~1 ~ ~ minecraft:lime_stained_glass run scoreboard players set $maxEnemies mvm_vars 15
execute if block ~1 ~ ~ minecraft:green_stained_glass run scoreboard players set $maxEnemies mvm_vars 20

execute if block ~ ~-1 ~ minecraft:coal_ore run scoreboard players set @e[tag=mvm_enemy] mvm_value 5

scoreboard players set @e[tag=mvm_enemy,tag=mvm_health125] mvm_health 125
tag @e[tag=mvm_enemy] remove mvm_health125

scoreboard players set @e[tag=mvm_enemy,tag=mvm_health3000] mvm_health 3000
tag @e[tag=mvm_enemy] remove mvm_health3000

scoreboard players operation @e[tag=mvm_enemy] mvm_enemyId > @e[team=mvm_enemies] mvm_enemyId
scoreboard players add @e[tag=mvm_enemy] mvm_enemyId 1

execute at @e[name="Bat Scout",tag=mvm_enemy] run summon marker ~ ~ ~ {CustomName:'"mvm_Hitbox"',NoGravity:1b,Tags:[mvm_hitbox3]}
execute at @e[name="Bat Scout",tag=mvm_enemy] run summon marker ~ ~ ~ {CustomName:'"mvm_Hitbox"',NoGravity:1b,Tags:[mvm_hitbox2]}
execute at @e[name="Bat Scout",tag=mvm_enemy] run summon marker ~ ~ ~ {CustomName:'"mvm_Hitbox"',NoGravity:1b,Tags:[mvm_hitbox1]}
execute at @e[name="Bat Scout",tag=mvm_enemy] run summon marker ~ ~ ~ {CustomName:'"mvm_Hitbox"',NoGravity:1b,Tags:[mvm_headHitbox]}
execute at @e[name="Bat Scout",tag=mvm_enemy] run summon marker ~ ~ ~ {CustomName:'"mvm_Hitbox"',NoGravity:1b,Tags:[mvm_backHitbox]}

execute at @e[name="I HAVE A GUN!!!",tag=mvm_enemy] run summon marker ~ ~ ~ {CustomName:'"mvm_Hitbox"',NoGravity:1b,Tags:[mvm_hitbox3]}
execute at @e[name="I HAVE A GUN!!!",tag=mvm_enemy] run summon marker ~ ~ ~ {CustomName:'"mvm_Hitbox"',NoGravity:1b,Tags:[mvm_hitbox2]}
execute at @e[name="I HAVE A GUN!!!",tag=mvm_enemy] run summon marker ~ ~ ~ {CustomName:'"mvm_Hitbox"',NoGravity:1b,Tags:[mvm_hitbox1]}
execute at @e[name="I HAVE A GUN!!!",tag=mvm_enemy] run summon marker ~ ~ ~ {CustomName:'"mvm_Hitbox"',NoGravity:1b,Tags:[mvm_headHitbox]}
execute at @e[name="I HAVE A GUN!!!",tag=mvm_enemy] run summon marker ~ ~ ~ {CustomName:'"mvm_Hitbox"',NoGravity:1b,Tags:[mvm_backHitbox]}

execute at @e[name="Giant Rapid Fire Demoman",tag=mvm_enemy] run summon marker ~ ~ ~ {CustomName:'"mvm_Hitbox"',NoGravity:1b,Tags:[mvm_hitbox1]}
execute at @e[name="Giant Rapid Fire Demoman",tag=mvm_enemy] run summon marker ~ ~ ~ {CustomName:'"mvm_Hitbox"',NoGravity:1b,Tags:[mvm_hitbox2]}
execute at @e[name="Giant Rapid Fire Demoman",tag=mvm_enemy] run summon marker ~ ~ ~ {CustomName:'"mvm_Hitbox"',NoGravity:1b,Tags:[mvm_hitbox3]}
execute at @e[name="Giant Rapid Fire Demoman",tag=mvm_enemy] run summon marker ~ ~ ~ {CustomName:'"mvm_Hitbox"',NoGravity:1b,Tags:[mvm_hitbox4]}
execute at @e[name="Giant Rapid Fire Demoman",tag=mvm_enemy] run summon marker ~ ~ ~ {CustomName:'"mvm_Hitbox"',NoGravity:1b,Tags:[mvm_hitbox5]}
execute at @e[name="Giant Rapid Fire Demoman",tag=mvm_enemy] run summon marker ~ ~ ~ {CustomName:'"mvm_Hitbox"',NoGravity:1b,Tags:[mvm_hitbox6]}
execute at @e[name="Giant Rapid Fire Demoman",tag=mvm_enemy] run summon marker ~ ~ ~ {CustomName:'"mvm_Hitbox"',NoGravity:1b,Tags:[mvm_hitbox7]}
execute at @e[name="Giant Rapid Fire Demoman",tag=mvm_enemy] run summon marker ~ ~ ~ {CustomName:'"mvm_Hitbox"',NoGravity:1b,Tags:[mvm_hitbox8]}
execute at @e[name="Giant Rapid Fire Demoman",tag=mvm_enemy] run summon marker ~ ~ ~ {CustomName:'"mvm_Hitbox"',NoGravity:1b,Tags:[mvm_hitbox9]}
execute at @e[name="Giant Rapid Fire Demoman",tag=mvm_enemy] run summon marker ~ ~ ~ {CustomName:'"mvm_Hitbox"',NoGravity:1b,Tags:[mvm_hitbox10]}
execute at @e[name="Giant Rapid Fire Demoman",tag=mvm_enemy] run summon marker ~ ~ ~ {CustomName:'"mvm_Hitbox"',NoGravity:1b,Tags:[mvm_hitbox11]}
execute at @e[name="Giant Rapid Fire Demoman",tag=mvm_enemy] run summon marker ~ ~ ~ {CustomName:'"mvm_Hitbox"',NoGravity:1b,Tags:[mvm_hitbox12]}
execute at @e[name="Giant Rapid Fire Demoman",tag=mvm_enemy] run summon marker ~ ~ ~ {CustomName:'"mvm_Hitbox"',NoGravity:1b,Tags:[mvm_hitbox13]}
execute at @e[name="Giant Rapid Fire Demoman",tag=mvm_enemy] run summon marker ~ ~ ~ {CustomName:'"mvm_Hitbox"',NoGravity:1b,Tags:[mvm_hitbox14]}
execute at @e[name="Giant Rapid Fire Demoman",tag=mvm_enemy] run summon marker ~ ~ ~ {CustomName:'"mvm_Hitbox"',NoGravity:1b,Tags:[mvm_hitbox15]}
execute at @e[name="Giant Rapid Fire Demoman",tag=mvm_enemy] run summon marker ~ ~ ~ {CustomName:'"mvm_Hitbox"',NoGravity:1b,Tags:[mvm_hitbox16]}
execute at @e[name="Giant Rapid Fire Demoman",tag=mvm_enemy] run summon marker ~ ~ ~ {CustomName:'"mvm_Hitbox"',NoGravity:1b,Tags:[mvm_hitbox17]}
execute at @e[name="Giant Rapid Fire Demoman",tag=mvm_enemy] run summon marker ~ ~ ~ {CustomName:'"mvm_Hitbox"',NoGravity:1b,Tags:[mvm_hitbox18]}
execute at @e[name="Giant Rapid Fire Demoman",tag=mvm_enemy] run summon marker ~ ~ ~ {CustomName:'"mvm_Hitbox"',NoGravity:1b,Tags:[mvm_hitbox19]}
execute at @e[name="Giant Rapid Fire Demoman",tag=mvm_enemy] run summon marker ~ ~ ~ {CustomName:'"mvm_Hitbox"',NoGravity:1b,Tags:[mvm_hitbox20]}
execute at @e[name="Giant Rapid Fire Demoman",tag=mvm_enemy] run summon marker ~ ~ ~ {CustomName:'"mvm_Hitbox"',NoGravity:1b,Tags:[mvm_hitbox21]}
execute at @e[name="Giant Rapid Fire Demoman",tag=mvm_enemy] run summon marker ~ ~ ~ {CustomName:'"mvm_Hitbox"',NoGravity:1b,Tags:[mvm_hitbox22]}
execute at @e[name="Giant Rapid Fire Demoman",tag=mvm_enemy] run summon marker ~ ~ ~ {CustomName:'"mvm_Hitbox"',NoGravity:1b,Tags:[mvm_hitbox23]}
execute at @e[name="Giant Rapid Fire Demoman",tag=mvm_enemy] run summon marker ~ ~ ~ {CustomName:'"mvm_Hitbox"',NoGravity:1b,Tags:[mvm_hitbox24]}
execute at @e[name="Giant Rapid Fire Demoman",tag=mvm_enemy] run summon marker ~ ~ ~ {CustomName:'"mvm_Hitbox"',NoGravity:1b,Tags:[mvm_hitbox25]}
execute at @e[name="Giant Rapid Fire Demoman",tag=mvm_enemy] run summon marker ~ ~ ~ {CustomName:'"mvm_Hitbox"',NoGravity:1b,Tags:[mvm_hitbox26]}
execute at @e[name="Giant Rapid Fire Demoman",tag=mvm_enemy] run summon marker ~ ~ ~ {CustomName:'"mvm_Hitbox"',NoGravity:1b,Tags:[mvm_hitbox27,mvm_backHitbox]}
execute at @e[name="Giant Rapid Fire Demoman",tag=mvm_enemy] run summon marker ~ ~ ~ {CustomName:'"mvm_Hitbox"',NoGravity:1b,Tags:[mvm_hitbox28,mvm_backHitbox]}
execute at @e[name="Giant Rapid Fire Demoman",tag=mvm_enemy] run summon marker ~ ~ ~ {CustomName:'"mvm_Hitbox"',NoGravity:1b,Tags:[mvm_hitbox29,mvm_backHitbox]}
execute at @e[name="Giant Rapid Fire Demoman",tag=mvm_enemy] run summon marker ~ ~ ~ {CustomName:'"mvm_Hitbox"',NoGravity:1b,Tags:[mvm_hitbox30,mvm_headHitbox]}
execute at @e[name="Giant Rapid Fire Demoman",tag=mvm_enemy] run summon marker ~ ~ ~ {CustomName:'"mvm_Hitbox"',NoGravity:1b,Tags:[mvm_hitbox31]}
execute at @e[name="Giant Rapid Fire Demoman",tag=mvm_enemy] run summon marker ~ ~ ~ {CustomName:'"mvm_Hitbox"',NoGravity:1b,Tags:[mvm_hitbox32]}
execute at @e[name="Giant Rapid Fire Demoman",tag=mvm_enemy] run summon marker ~ ~ ~ {CustomName:'"mvm_Hitbox"',NoGravity:1b,Tags:[mvm_hitbox33]}

scoreboard players operation @e[tag=mvm_enemy] mvm_map = @s mvm_map

scoreboard players add @e[type=marker,name="mvm_Hitbox"] mvm_enemyId 0
execute as @e[tag=mvm_enemy] at @s run execute as @e[type=marker,name="mvm_Hitbox",distance=..1,scores={mvm_enemyId=0}] at @s run function mvm:hitbox_ids

execute as @e[tag=mvm_enemy,tag=mvm_giant] at @s run summon slime ~ ~ ~ {CustomName:'"mvm_BoundingBox"',NoAI:1b,Size:8,Health:100000.0f,Silent:1b,Attributes:[{Name:"generic.max_health",Base:100000.0d}],ActiveEffects:[{Id:14,Amplifier:1b,ShowParticles:0b,Duration:999999}]}
scoreboard players add @e[type=slime,name="mvm_BoundingBox"] mvm_enemyId 0
execute as @e[tag=mvm_enemy,tag=mvm_giant] at @s run scoreboard players operation @e[type=slime,name="mvm_BoundingBox",distance=..1,scores={mvm_enemyId=0}] mvm_enemyId = @s mvm_enemyId
team join mvm_players @e[type=slime,name="mvm_BoundingBox"]

execute as @e[tag=mvm_enemy] at @s run scoreboard players operation @e[type=marker,name="mvm_Hitbox",distance=..1,scores={mvm_enemyId=0}] mvm_map = @s mvm_map
execute as @e[tag=mvm_enemy] at @s run scoreboard players operation @e[type=marker,name="mvm_Hitbox",distance=..1,scores={mvm_enemyId=0}] mvm_enemyId = @s mvm_enemyId



effect give @e[tag=mvm_enemy] resistance 999999 255 true
team join mvm_enemies @e[tag=mvm_enemy]
tag @e[tag=mvm_enemy] remove mvm_enemy
execute unless block ~1 ~ ~ minecraft:glass run tp @s ~1 ~ ~
execute if block ~1 ~ ~ glass unless entity @e[team=mvm_enemies] run function mvm:next_wave