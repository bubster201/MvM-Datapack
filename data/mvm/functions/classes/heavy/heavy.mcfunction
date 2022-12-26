execute as @s[scores={mvm_useCarrotStick=1..,mvm_ammo1=1..},nbt={SelectedItem:{tag:{mvm_slot1:1b}}}] at @s positioned ~ ~1.5 ~ run function mvm:classes/heavy/heavy_fire1
execute as @s[advancements={mvm:eat_bread=true}] if score @s mvm_health < @s mvm_maxHealth run clear @s bread
scoreboard players operation @s[advancements={mvm:eat_bread=true}] mvm_health = @s mvm_maxHealth
scoreboard players operation @s[advancements={mvm:eat_bread=true}] mvm_reload2 = @s mvm_reloadSpeed2