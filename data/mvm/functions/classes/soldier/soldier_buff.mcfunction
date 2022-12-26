scoreboard players set @s[scores={mvm_buffBannerDamage=601..},tag=!mvm_buffBanner] mvm_buffBannerDamage 600 
execute as @s[scores={mvm_buffBannerDamage=600..},nbt=!{Inventory:[{id:"minecraft:goat_horn"}]},tag=!mvm_buffBanner] run item replace entity @s hotbar.1 with goat_horn{mvm_slot2:1b,mvm_weapon:1b,instrument:"minecraft:ponder_goat_horn"}
execute as @s[scores={mvm_useGoatHorn=1..},nbt={SelectedItem:{tag:{mvm_slot2:1b}}},tag=!mvm_buffBanner] at @s positioned ~ ~1.5 ~ run function mvm:classes/soldier/soldier_fire2

scoreboard players remove @s[tag=mvm_buffBanner,scores={mvm_buffBannerDamage=1..}] mvm_buffBannerDamage 1
execute as @s[tag=mvm_buffBanner] run tag @a[team=mvm_players,distance=..20] add mvm_buffed
tag @s[tag=mvm_buffBanner,scores={mvm_buffBannerDamage=0}] remove mvm_buffBanner