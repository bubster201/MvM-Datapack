tp @s ^ ^ ^0.2 facing entity @e[type=marker,name="mvm_Node",tag=mvm_currentNode,limit=1,sort=nearest] eyes
execute unless block ~ ~0.1 ~ minecraft:air run tp @s ~ ~1 ~
execute unless block ~ ~ ~ minecraft:air run effect give @s resistance 1 0 true
execute if block ~ ~ ~ minecraft:air if block ~ ~ ~ minecraft:air if block ~ ~-0.1 ~ minecraft:air run tp @s ~ ~-0.1 ~
#execute positioned ~ ~-1 ~ if entity @e[type=marker,name="Node",tag=currentNode,distance=..0.2] run tp @s ~ ~-1 ~
tp @e[type=armor_stand,name="mvm_Bomb"] ^ ^0.5 ^-0.3

execute as @e[type=armor_stand,name="mvm_Model"] run scoreboard players operation @s mvm_enemyIdDiff = @s mvm_enemyId
scoreboard players operation @e[type=armor_stand,name="mvm_Model"] mvm_enemyIdDiff -= @s mvm_enemyId
effect give @e[type=armor_stand,name="mvm_Model",scores={mvm_enemyIdDiff=0}] glowing 1 0 true
execute unless entity @e[type=armor_stand,name="mvm_Model",scores={mvm_enemyIdDiff=0}] run effect give @s glowing 1 0 true