execute as @e[type=armor_stand,tag=mvm_building,limit=1,sort=nearest,distance=..2] run scoreboard players operation @s mvm_ammo1 += @s mvm_metalReference
execute as @e[type=armor_stand,tag=mvm_building,limit=1,sort=nearest,distance=..2] if score @s mvm_ammo1 > @s mvm_maxAmmo1 run scoreboard players operation @s mvm_ammo1 = @s mvm_maxAmmo1
scoreboard players operation @s mvm_metalReference -= @e[type=armor_stand,tag=mvm_building,limit=1,sort=nearest,distance=..2] mvm_metalReference
execute as @e[type=armor_stand,tag=mvm_building,limit=1,sort=nearest,distance=..2] run scoreboard players operation @s mvm_metalReference /= $3 mvm_vars
scoreboard players operation @s mvm_metal -= @e[type=armor_stand,tag=mvm_building,limit=1,sort=nearest,distance=..2] mvm_metalReference