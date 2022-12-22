execute as @s[scores={mvm_useCrossbow=1..},nbt={SelectedItem:{tag:{mvm_slot1:1b}}}] at @s positioned ~ ~1.5 ~ run function mvm:classes/scout/scout_fire1
execute as @s[scores={mvm_useLingeringPotion=1..}] at @s run scoreboard players remove @s mvm_ammo2 1
execute as @s[scores={mvm_useLingeringPotion=1..}] at @s run scoreboard players operation @s mvm_reload2 = @s mvm_reloadSpeed2
