scoreboard players operation @e[type=armor_stand,tag=mvm_building,limit=1,sort=nearest,distance=..2] mvm_health += @s mvm_metalReference
execute as @e[type=armor_stand,tag=mvm_building,limit=1,sort=nearest,distance=..2] if score @s mvm_health > @s mvm_maxHealth run scoreboard players operation @s mvm_health = @s mvm_maxHealth
scoreboard players operation @s mvm_metalReference /= $3 mvm_vars
scoreboard players operation @s mvm_metal -= @s mvm_metalReference
scoreboard players set @s mvm_metalReference 0