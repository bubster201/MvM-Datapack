scoreboard players add @s mvm_distance 1
execute as @s[scores={mvm_distance=..100}] unless entity @e[type=armor_stand,tag=mvm_building,distance=..2] positioned ^ ^ ^0.2 if block ~ ~ ~ minecraft:air run function mvm:classes/engineer/rescue_ranger_hitscan
execute as @s[scores={mvm_distance=..100}] if entity @e[type=armor_stand,tag=mvm_building,distance=..2,name="mvm_SentryGun"] run item replace entity @s hotbar.4 with observer{mvm_buildingType:1b,mvm_buildingLevel:0b,mvm_weapon:1b}
execute as @s[scores={mvm_distance=..100}] if entity @e[type=armor_stand,tag=mvm_building,distance=..2,name="mvm_SentryGun"] run scoreboard players remove @s mvm_metal 100
execute as @s[scores={mvm_distance=..100}] if entity @e[type=armor_stand,tag=mvm_building,distance=..2,name="mvm_SentryGun"] run playsound minecraft:block.lava.pop master @s ~ ~ ~ 5 0.7
kill @e[type=armor_stand,tag=mvm_building,distance=..2,name="mvm_SentryGun"]