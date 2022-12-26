clear @s

scoreboard players set @s mvm_maxClip1 6
scoreboard players set @s mvm_maxAmmo1 32
scoreboard players set @s mvm_class 6
scoreboard players set @s mvm_reloadSpeed1 20
scoreboard players set @s mvm_reloadSpeed2 100
scoreboard players set @s mvm_ammo1 32
scoreboard players set @s mvm_ammo2 1
scoreboard players set @s mvm_metal 200

execute as @e[type=armor_stand,name="mvm_Stickybomb"] at @s if score @s mvm_id = @p[scores={mvm_class=6}] mvm_id run function mvm:classes/demoman/sticky_explode

item replace entity @s hotbar.3 with observer{mvm_buildingType:1b,mvm_buildingLevel:0b,mvm_weapon:1b}
item replace entity @s hotbar.2 with iron_axe{mvm_slot3:1b,mvm_weapon:1b}
item replace entity @s hotbar.0 with crossbow{display:{Name:'{"text":"Rescue Ranger"}'},ChargedProjectiles:[{id:"minecraft:tipped_arrow",Count:1b,tag:{CustomPotionColor:33}}],Charged:1b,mvm_slot1:1b,mvm_weapon:1b}