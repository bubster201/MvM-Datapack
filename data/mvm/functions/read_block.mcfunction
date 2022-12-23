execute if block ~1 ~ ~ minecraft:cyan_wool run execute as @e[type=marker,name="mvm_EnemySpawn"] at @s run summon pillager ~ ~ ~ {CustomName:'"Moron"',Tags:[mvm_enemy]}
execute if block ~1 ~ ~ minecraft:green_wool run execute as @e[type=marker,name="mvm_EnemySpawn"] at @s run summon zombie ~ ~ ~ {CustomName:'"Bat Scout"',Tags:[mvm_enemy,mvm_health125],HandItems:[{id:"minecraft:bone",Count:1b}],Attributes:[{Name:"generic.follow_range", Base:1000.0}],DeathLootTable:"minecraft.empty"}

execute if block ~ ~-1 ~ minecraft:coal_ore run scoreboard players set @e[tag=mvm_enemy] mvm_value 5

scoreboard players set @e[tag=mvm_enemy,tag=mvm_health125] mvm_health 125
tag @e[tag=mvm_enemy] remove mvm_health125

effect give @e[tag=mvm_enemy] resistance 999999 255 true
team join mvm_enemies @e[tag=mvm_enemy]
tag @e[tag=mvm_enemy] remove mvm_enemy
tp @s ~1 ~ ~