execute as @e[type=armor_stand,name="mvm_Reader"] run scoreboard players operation @s mvm_mapDiff = @s mvm_map
scoreboard players operation @e[type=armor_stand,name="mvm_Reader"] mvm_mapDiff -= $currentMap mvm_vars

scoreboard players set $totalEnemies mvm_vars 0
execute as @e[team=mvm_enemies] run scoreboard players add $totalEnemies mvm_vars 1
execute as @e[type=armor_stand,name="mvm_Reader",scores={mvm_mapDiff=0}] at @s if score $waveActive mvm_vars matches 1 if score $totalEnemies mvm_vars < $maxEnemies mvm_vars unless block ~1 ~ ~ minecraft:air run function mvm:read_block