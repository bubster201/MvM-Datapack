execute as @e[type=armor_stand,tag=mvm_building,distance=..2] run scoreboard players operation @s mvm_buildingIdDiff = @s mvm_id
scoreboard players operation @e[type=armor_stand,tag=mvm_building,distance=..2] mvm_buildingIdDiff -= @s mvm_id

clear @s crossbow
clear @s structure_void

item replace entity @s hotbar.0 with crossbow{display:{Name:'{"text":"Rescue Ranger"}'},ChargedProjectiles:[{id:"minecraft:tipped_arrow",Count:1b,tag:{CustomPotionColor:33}}],Charged:1b,mvm_slot1:1b,mvm_weapon:1b}
item replace entity @s hotbar.8 with structure_void{mvm_weapon:1b,mvm_redeploy:1b,display:{Name:'"Redeploy Building"'}}

tag @e[type=armor_stand,tag=mvm_building,distance=..2,scores={mvm_buildingIdDiff=0},tag=mvm_moving] remove mvm_moving
tag @s remove mvm_haul