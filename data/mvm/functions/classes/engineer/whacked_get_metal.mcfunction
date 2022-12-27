scoreboard players set @s mvm_metalReference 200
scoreboard players operation @s mvm_metalReference -= @s mvm_metal
execute if score @s mvm_metalReference > $25 mvm_vars run scoreboard players set @s mvm_metalReference 25