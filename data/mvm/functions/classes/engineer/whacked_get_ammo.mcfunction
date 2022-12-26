scoreboard players operation @s mvm_metalReference = @s mvm_maxAmmo1
scoreboard players operation @s mvm_metalReference -= @s mvm_ammo1
execute if score @s mvm_metalReference > $100 mvm_vars run scoreboard players set @s mvm_metalReference 100