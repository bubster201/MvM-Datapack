clear @s

scoreboard players set @s mvm_maxAmmo1 200
scoreboard players set @s mvm_class 5
scoreboard players set @s mvm_reloadSpeed1 1

execute as @e[type=armor_stand,name="mvm_Stickybomb"] at @s if score @s mvm_id = @p[scores={mvm_class=5}] mvm_id run function mvm:classes/demoman/sticky_explode

item replace entity @s hotbar.0 with carrot_on_a_stick{mvm_slot1:1b,mvm_weapon:1b}
item replace entity @s hotbar.1 with bread{mvm_slot2:1b,mvm_weapon:1b}