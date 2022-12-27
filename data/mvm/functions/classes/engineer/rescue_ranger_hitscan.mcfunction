scoreboard players add @s mvm_distance 1

execute as @s[scores={mvm_distance=..100}] unless entity @e[type=armor_stand,tag=mvm_building,distance=..2] positioned ^ ^ ^0.2 if block ~ ~ ~ minecraft:air run function mvm:classes/engineer/rescue_ranger_hitscan

execute as @s[scores={mvm_distance=..100}] if entity @e[type=armor_stand,tag=mvm_building,distance=..2,tag=!mvm_moving,tag=!mvm_construct] run scoreboard players remove @s mvm_metal 100
execute as @s[scores={mvm_distance=..100}] if entity @e[type=armor_stand,tag=mvm_building,distance=..2,tag=!mvm_moving,tag=!mvm_construct] run playsound minecraft:block.lava.pop master @s ~ ~ ~ 5 0.7

execute as @s[scores={mvm_distance=..100}] if entity @e[type=armor_stand,tag=mvm_building,distance=..2,tag=!mvm_moving,tag=!mvm_construct] run clear @s structure_void
execute as @s[scores={mvm_distance=..100}] if entity @e[type=armor_stand,tag=mvm_building,distance=..2,tag=!mvm_moving,tag=!mvm_construct] run clear @s crossbow
execute as @s[scores={mvm_distance=..100}] if entity @e[type=armor_stand,tag=mvm_building,distance=..2,tag=!mvm_moving,tag=!mvm_construct] run item replace entity @s hotbar.0 with structure_void{mvm_weapon:1b,mvm_redeploy:1b,display:{Name:'"Redeploy Building"'}}
execute as @s[scores={mvm_distance=..100}] if entity @e[type=armor_stand,tag=mvm_building,distance=..2,tag=!mvm_moving,tag=!mvm_construct] run tag @s add mvm_haul
execute as @s[scores={mvm_distance=..100}] run tag @e[type=armor_stand,tag=mvm_building,distance=..2,tag=!mvm_moving,tag=!mvm_construct] add mvm_moving
