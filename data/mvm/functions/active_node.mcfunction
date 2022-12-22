execute if score $waveActive mvm_vars matches 0 run particle dust 0 1 1 1 ~ ~ ~ 0.1 0.1 0.1 0 2
execute if score @s mvm_node = $currentNode mvm_node run tag @s add mvm_currentNode
execute as @s[tag=mvm_currentNode] run execute as @e[tag=mvm_bombCarrier,limit=1] at @s run function mvm:bomb_carrier
execute as @s[tag=mvm_currentNode,tag=!mvm_hatch] if entity @e[tag=mvm_bombCarrier,distance=..1] run function mvm:next_node
execute as @s[tag=mvm_currentNode,tag=mvm_hatch] if entity @e[tag=mvm_bombCarrier,distance=..1] run function mvm:detonate_timer
execute as @s[tag=mvm_currentNode,tag=mvm_hatch] unless entity @e[tag=mvm_bombCarrier,distance=..1] run scoreboard players set $detonateTime mvm_timer 100
