scoreboard players operation @s mvm_ammoReference = @s mvm_maxAmmo1
scoreboard players operation @s mvm_ammoReference *= $20 mvm_vars
scoreboard players operation @s mvm_ammoReference /= $100 mvm_vars
scoreboard players operation @s mvm_ammo1 += @s mvm_ammoReference
execute if score @s mvm_ammo1 > @s mvm_maxAmmo1 run scoreboard players operation @s mvm_ammo1 = @s mvm_maxAmmo1

scoreboard players operation @s mvm_ammoReference = @s mvm_maxAmmo2
scoreboard players operation @s mvm_ammoReference *= $20 mvm_vars
scoreboard players operation @s mvm_ammoReference /= $100 mvm_vars
scoreboard players operation @s mvm_ammo2 += @s mvm_ammoReference
execute if score @s mvm_ammo2 > @s mvm_maxAmmo2 run scoreboard players operation @s mvm_ammo2 = @s mvm_maxAmmo2

scoreboard players operation @s mvm_ammoReference = @s mvm_maxAmmo3
scoreboard players operation @s mvm_ammoReference *= $20 mvm_vars
scoreboard players operation @s mvm_ammoReference /= $100 mvm_vars
scoreboard players operation @s mvm_ammo3 += @s mvm_ammoReference
execute if score @s mvm_ammo3 > @s mvm_maxAmmo3 run scoreboard players operation @s mvm_ammo3 = @s mvm_maxAmmo3

scoreboard players operation @s[scores={mvm_class=6}] mvm_ammoReference = @s mvm_maxMetal
scoreboard players operation @s[scores={mvm_class=6}] mvm_ammoReference *= $5 mvm_vars
scoreboard players operation @s[scores={mvm_class=6}] mvm_ammoReference /= $100 mvm_vars
scoreboard players operation @s[scores={mvm_class=6}] mvm_metal += @s mvm_ammoReference
execute if score @s[scores={mvm_class=6}] mvm_metal > @s mvm_maxMetal run scoreboard players operation @s mvm_metal = @s mvm_maxMetal