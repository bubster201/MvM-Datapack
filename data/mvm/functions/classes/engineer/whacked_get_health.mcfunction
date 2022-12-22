scoreboard players operation @s mvm_metalReference = @s mvm_maxHealth
scoreboard players operation @s mvm_metalReference -= @s mvm_health
execute if score @s mvm_metalReference > $100 mvm_vars run scoreboard players set @s mvm_metalReference 100