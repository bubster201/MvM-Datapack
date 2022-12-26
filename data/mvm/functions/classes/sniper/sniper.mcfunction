execute as @s[scores={mvm_crouch=1..,mvm_ammo1=1..,mvm_reload1=1},nbt={SelectedItem:{tag:{mvm_slot1:1b}}}] at @s positioned ~ ~1.5 ~ unless block ~ ~-1.6 ~ minecraft:air run function mvm:classes/sniper/sniper_fire1
execute as @s[scores={mvm_useLingeringPotion=1..}] at @s run scoreboard players operation @s mvm_reload2 = @s mvm_reloadSpeed2
execute as @s[scores={mvm_useIronSword=1..},nbt={SelectedItem:{tag:{mvm_slot3:1b}}}] at @s positioned ~ ~1.5 ~ run function mvm:classes/sniper/sniper_fire3
