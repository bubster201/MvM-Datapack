scoreboard players operation @e[type=armor_stand,tag=mvm_building,limit=1,sort=nearest,distance=..2,tag=!mvm_level3] mvm_metal += @s mvm_metalReference
execute as @e[type=armor_stand,tag=mvm_building,limit=1,sort=nearest,distance=..2] if score @s mvm_metal > $200 vars run scoreboard players set @s mvm_metal 200

execute as @e[type=armor_stand,tag=mvm_building,limit=1,sort=nearest,distance=..2,scores={mvm_metal=200}] as @s[tag=mvm_level2] run tag @s add mvm_level3
execute as @e[type=armor_stand,tag=mvm_building,limit=1,sort=nearest,distance=..2,scores={mvm_metal=200}] as @s[tag=mvm_level2] run tag @s remove mvm_level2
execute as @e[type=armor_stand,tag=mvm_building,limit=1,sort=nearest,distance=..2,scores={mvm_metal=200}] as @s[tag=mvm_level1] run tag @s add mvm_level2
execute as @e[type=armor_stand,tag=mvm_building,limit=1,sort=nearest,distance=..2,scores={mvm_metal=200}] as @s[tag=mvm_level1] run tag @s remove mvm_level1

execute as @e[type=armor_stand,tag=mvm_building,limit=1,sort=nearest,distance=..2,scores={mvm_metal=200}] at @s run playsound minecraft:entity.villager.yes master @a ~ ~ ~ 10


scoreboard players set @e[type=armor_stand,tag=mvm_building,limit=1,sort=nearest,distance=..2,scores={mvm_metal=200}] mvm_metal 0

scoreboard players operation @s mvm_metal -= @s mvm_metalReference
