tp @s ^ ^ ^0.2 facing entity @e[type=marker,name="mvm_Node",tag=mvm_currentNode,limit=1,sort=nearest] eyes
execute unless block ~ ~0.1 ~ minecraft:air run tp @s ~ ~1 ~
execute unless block ~ ~ ~ minecraft:air run effect give @s resistance 1 0 true
execute if block ~ ~ ~ minecraft:air if block ~ ~ ~ minecraft:air if block ~ ~-0.1 ~ minecraft:air run tp @s ~ ~-0.1 ~
#execute positioned ~ ~-1 ~ if entity @e[type=marker,name="Node",tag=currentNode,distance=..0.2] run tp @s ~ ~-1 ~
tp @e[type=armor_stand,name="mvm_Bomb"] ^ ^0.5 ^-0.3
effect give @s glowing 1 0 true