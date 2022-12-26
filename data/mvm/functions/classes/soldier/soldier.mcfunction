execute as @s[scores={mvm_useCrossbow=1..},nbt={SelectedItem:{tag:{mvm_slot1:1b}}}] at @s positioned ~ ~1.5 ~ run function mvm:classes/soldier/soldier_fire1

execute as @e[type=firework_rocket,name="mvm_SoldierRocket"] at @s run function mvm:classes/soldier/soldier_rocket
