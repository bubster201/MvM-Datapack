execute as @s[scores={mvm_useCrossbow=1..},nbt={SelectedItem:{tag:{mvm_slot1:1b}}}] at @s positioned ~ ~1.5 ~ run function mvm:classes/engineer/engineer_fire1
execute as @s[scores={mvm_crouch=1..,mvm_metal=100..},nbt={SelectedItem:{tag:{mvm_slot1:1b}}}] at @s positioned ~ ~1.75 ~ run function mvm:classes/engineer/rescue_ranger_hitscan

scoreboard players set @s mvm_distance 0
execute positioned ~ ~1.5 ~ as @s[scores={mvm_useIronAxe=1..},nbt={SelectedItem:{tag:{mvm_slot3:1b}}}] at @s run function mvm:classes/engineer/engineer_fire3

execute as @s[scores={mvm_metal=130..}] as @e[type=item,nbt={Item:{id:"minecraft:observer",Count:1b,tag:{mvm_buildingType:1b,mvm_buildingLevel:0b}}}] at @s run function mvm:classes/engineer/spawn_sentry
execute as @e[type=armor_stand,tag=mvm_construct] at @s run function mvm:classes/engineer/construct
execute as @e[type=armor_stand,tag=mvm_building,tag=!mvm_construct] at @s run function mvm:classes/engineer/buildings