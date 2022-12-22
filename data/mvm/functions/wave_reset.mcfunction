kill @e[team=mvm_enemies]
execute as @e[type=armor_stand,name="mvm_WaveMarker"] at @s run tp @e[type=armor_stand,name="mvm_Reader"] ~ ~ ~
scoreboard players set $waveActive mvm_vars 0
scoreboard players set $currentNode mvm_node 1
kill @e[type=armor_stand,name="mvm_Bomb"]
tag @e remove mvm_currentNode