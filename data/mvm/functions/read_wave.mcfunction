scoreboard players set $totalEnemies mvm_vars 0
execute as @e[team=mvm_enemies] run scoreboard players add $totalEnemies mvm_vars 1
execute as @e[type=armor_stand,name="mvm_Reader"] at @s if score $waveActive mvm_vars matches 1 if score $totalEnemies mvm_vars < $maxEnemies mvm_vars unless block ~1 ~ ~ minecraft:air run function mvm:read_block