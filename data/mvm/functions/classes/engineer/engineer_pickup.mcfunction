

execute as @e[type=armor_stand,tag=mvm_building,distance=..2] run scoreboard players operation @s mvm_buildingIdDiff = @s mvm_id
scoreboard players operation @e[type=armor_stand,tag=mvm_building,distance=..2] mvm_buildingIdDiff -= @s mvm_id

execute if entity @e[type=armor_stand,tag=mvm_building,distance=..2,scores={mvm_buildingIdDiff=0},tag=!mvm_construct] run tag @s add mvm_haul
tag @e[type=armor_stand,tag=mvm_building,distance=..2,scores={mvm_buildingIdDiff=0},tag=!mvm_construct] add mvm_moving