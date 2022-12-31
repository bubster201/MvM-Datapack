kill @e[team=mvm_enemies]
execute as @e[type=armor_stand,name="mvm_WaveMarker"] at @s run tp @e[type=armor_stand,name="mvm_Reader"] ~ ~ ~
scoreboard players set $waveActive mvm_vars 0
scoreboard players set $currentNode mvm_node 1
kill @e[type=armor_stand,name="mvm_Bomb"]
kill @e[type=armor_stand,name="mvm_EnemyGrenade"]
tag @e remove mvm_currentNode
scoreboard players set $waveMoney mvm_money 0
execute as @e[type=armor_stand,name="mvm_WaveMarker"] run scoreboard players operation @s mvm_mapDiff = @s mvm_map
scoreboard players operation @e[type=armor_stand,name="mvm_WaveMarker"] mvm_mapDiff -= $currentMap mvm_vars
execute at @e[type=armor_stand,name="mvm_WaveMarker",scores={mvm_mapDiff=0}] run summon armor_stand ~ ~ ~ {CustomName:'"mvm_NumEnemies"',NoGravity:1b,Invulnerable:1b}
scoreboard players set $numEnemies mvm_vars -1
scoreboard players set $enemiesLeft mvm_vars 0
execute as @e[type=armor_stand,name="mvm_NumEnemies"] at @s run function mvm:get_num_enemies
bossbar set mvm_wavebar name [{"text":"Wave ","color":"aqua"},{"score":{"name":"$wave","objective":"mvm_vars"},"color":"yellow"}]
