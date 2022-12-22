kill @e[type=marker,name="mvm_HeavyRandomSpread"]

execute as @e[type=marker,name="mvm_EnemySpawn",limit=1,sort=nearest] at @s run summon marker ~ ~ ~ {CustomName:'"mvm_HeavyRandomSpread"'}
execute as @e[type=marker,name="mvm_EnemySpawn",limit=1,sort=nearest] at @s run summon marker ~ ~ ~ {CustomName:'"mvm_HeavyRandomSpread"'}
execute as @e[type=marker,name="mvm_EnemySpawn",limit=1,sort=nearest] at @s run summon marker ~ ~ ~ {CustomName:'"mvm_HeavyRandomSpread"'}
execute as @e[type=marker,name="mvm_EnemySpawn",limit=1,sort=nearest] at @s run summon marker ~ ~ ~ {CustomName:'"mvm_HeavyRandomSpread"'}
execute as @e[type=marker,name="mvm_EnemySpawn",limit=1,sort=nearest] at @s run summon marker ~ ~ ~ {CustomName:'"mvm_HeavyRandomSpread"'}
execute as @e[type=marker,name="mvm_EnemySpawn",limit=1,sort=nearest] at @s run summon marker ~ ~ ~ {CustomName:'"mvm_HeavyRandomSpread"'}
execute as @e[type=marker,name="mvm_EnemySpawn",limit=1,sort=nearest] at @s run summon marker ~ ~ ~ {CustomName:'"mvm_HeavyRandomSpread"'}
execute as @e[type=marker,name="mvm_EnemySpawn",limit=1,sort=nearest] at @s run summon marker ~ ~ ~ {CustomName:'"mvm_HeavyRandomSpread"'}
execute as @e[type=marker,name="mvm_EnemySpawn",limit=1,sort=nearest] at @s run summon marker ~ ~ ~ {CustomName:'"mvm_HeavyRandomSpread"'}

scoreboard players add @e[type=marker,name="mvm_HeavyRandomSpread"] mvm_heavy_spread 0
scoreboard players set @e[type=marker,name="mvm_HeavyRandomSpread",scores={mvm_heavy_spread=0},limit=1] mvm_heavy_spread 1
scoreboard players set @e[type=marker,name="mvm_HeavyRandomSpread",scores={mvm_heavy_spread=0},limit=1] mvm_heavy_spread 2
scoreboard players set @e[type=marker,name="mvm_HeavyRandomSpread",scores={mvm_heavy_spread=0},limit=1] mvm_heavy_spread 3
scoreboard players set @e[type=marker,name="mvm_HeavyRandomSpread",scores={mvm_heavy_spread=0},limit=1] mvm_heavy_spread 4
scoreboard players set @e[type=marker,name="mvm_HeavyRandomSpread",scores={mvm_heavy_spread=0},limit=1] mvm_heavy_spread 5
scoreboard players set @e[type=marker,name="mvm_HeavyRandomSpread",scores={mvm_heavy_spread=0},limit=1] mvm_heavy_spread 6
scoreboard players set @e[type=marker,name="mvm_HeavyRandomSpread",scores={mvm_heavy_spread=0},limit=1] mvm_heavy_spread 7
scoreboard players set @e[type=marker,name="mvm_HeavyRandomSpread",scores={mvm_heavy_spread=0},limit=1] mvm_heavy_spread 8
scoreboard players set @e[type=marker,name="mvm_HeavyRandomSpread",scores={mvm_heavy_spread=0},limit=1] mvm_heavy_spread 9

scoreboard players set $detonateTime mvm_timer 100
execute as @e[type=marker,name="mvm_EnemySpawn"] at @s run summon minecraft:armor_stand ~ ~ ~ {CustomName:'"mvm_Bomb"',Small:1b,Marker:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:iron_block",Count:1b}]}
team join mvm_bomb @e[type=armor_stand,name="mvm_Bomb"]
effect give @e[type=armor_stand,name="mvm_Bomb"] glowing 999999 0 true
scoreboard players set $waveActive mvm_vars 1