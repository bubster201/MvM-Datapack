clear @s

scoreboard players set @s mvm_maxAmmo1 200
scoreboard players set @s mvm_class 5
scoreboard players set @s mvm_reloadSpeed1 1

execute as @e[type=armor_stand,name="mvm_Stickybomb"] at @s if score @s mvm_id = @p[scores={mvm_class=5}] mvm_id run function mvm:classes/demoman/sticky_explode

give @s carrot_on_a_stick{slot1:1b,weapon:1b}