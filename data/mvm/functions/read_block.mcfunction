execute if block ~1 ~ ~ minecraft:cyan_wool run execute as @e[type=marker,name="mvm_EnemySpawn"] at @s run summon pillager ~ ~ ~ {CustomName:'"Moron"',Tags:[mvm_enemy]}
execute if block ~1 ~ ~ minecraft:green_wool run execute as @e[type=marker,name="mvm_EnemySpawn"] at @s run summon zombie ~ ~ ~ {CustomName:'"Bat Scout"',Tags:[mvm_enemy,mvm_health125],HandItems:[{id:"minecraft:bone",Count:1b}],Attributes:[{Name:"generic.follow_range", Base:1000.0}],DeathLootTable:"minecraft.empty"}
execute if block ~1 ~ ~ minecraft:white_wool run execute as @e[type=marker,name="mvm_EnemySpawn"] at @s run summon pillager ~ ~ ~ {CustomName:'"I HAVE A GUN!!!"',Tags:[mvm_enemy,mvm_health125],HandItems:[{id:"minecraft:crossbow",Count:1b}],Attributes:[{Name:"generic.follow_range", Base:1000.0}],DeathLootTable:"minecraft.empty"}


execute if block ~ ~-1 ~ minecraft:coal_ore run scoreboard players set @e[tag=mvm_enemy] mvm_value 5

scoreboard players set @e[tag=mvm_enemy,tag=mvm_health125] mvm_health 125
tag @e[tag=mvm_enemy] remove mvm_health125

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

scoreboard players add @e[type=marker,name="mvm_Hitbox"] mvm_enemyId 0
execute as @e[tag=mvm_enemy] at @s run scoreboard players operation @e[type=marker,name="mvm_Hitbox",distance=..0.01,scores={mvm_enemyId=0}] mvm_enemyId = @s mvm_enemyId


effect give @e[tag=mvm_enemy] resistance 999999 255 true
team join mvm_enemies @e[tag=mvm_enemy]
tag @e[tag=mvm_enemy] remove mvm_enemy
tp @s ~1 ~ ~