clear @s
scoreboard players set @s mvm_maxAmmo1 32
scoreboard players set @s mvm_class 8
scoreboard players set @s mvm_reloadSpeed1 50
scoreboard players set @s mvm_ammo1 25

execute as @e[type=armor_stand,name="mvm_Stickybomb"] at @s if score @s mvm_id = @p[scores={mvm_class=1}] mvm_id run function mvm:classes/demoman/sticky_explode

item replace entity @s hotbar.0 with spyglass{Charged:1b,mvm_slot1:1b,mvm_weapon:1b,CustomModelData:5558}
item replace entity @s hotbar.1 with lingering_potion{CustomPotionColor:16776960,mvm_slot2:1b,mvm_weapon:1b,Potion:"minecraft:luck",CustomModelData:5558}
item replace entity @s hotbar.2 with iron_sword{mvm_slot3:1b,mvm_weapon:1b,CustomModelData:5558}