

execute as @e[type=armor_stand,tag=mvm_building,distance=..2] run scoreboard players operation @s mvm_buildingIdDiff = @s mvm_id
scoreboard players operation @e[type=armor_stand,tag=mvm_building,distance=..2] mvm_buildingIdDiff -= @s mvm_id

tp @e[type=armor_stand,tag=mvm_building,limit=1,sort=nearest,scores={mvm_buildingIdDiff=0},tag=mvm_moving] ^ ^ ^1