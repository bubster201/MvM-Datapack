execute as @s[scores={mvm_useCrossbow=1..},nbt={SelectedItem:{tag:{mvm_slot1:1b}}}] at @s positioned ~ ~1.5 ~ run function mvm:classes/medic/medic_fire1
execute as @e[type=arrow,tag=mvm_crossbolt] at @s run function mvm:classes/medic/crossbolt
execute as @s[scores={mvm_useIronSword=1..},nbt={SelectedItem:{tag:{mvm_slot3:1b}}}] at @s positioned ~ ~1.5 ~ run function mvm:classes/medic/medic_fire3
