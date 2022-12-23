execute as @s[scores={mvm_useCrossbow=1..},nbt={SelectedItem:{tag:{mvm_slot1:1b}}}] at @s positioned ~ ~1.5 ~ run function mvm:classes/soldier/soldier_fire1

execute as @s[scores={mvm_buffBannerDamage=600..},nbt=!{Inventory:[{id:"minecraft:goat_horn"}]}] run item replace entity @s hotbar.1 with goat_horn{mvm_slot2:1b,mvm_weapon:1b,instrument:"minecraft:ponder_goat_horn"}
execute as @s[scores={mvm_useGoatHorn=1..},nbt={SelectedItem:{tag:{mvm_slot2:1b}}}] at @s positioned ~ ~1.5 ~ run function mvm:classes/soldier/soldier_fire2

execute as @e[type=firework_rocket,name="mvm_SoldierRocket"] at @s run function mvm:classes/soldier/soldier_rocket
