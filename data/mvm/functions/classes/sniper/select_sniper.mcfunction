clear @s
scoreboard players set @s mvm_maxAmmo1 32
scoreboard players set @s mvm_class 8
scoreboard players set @s mvm_reloadSpeed1 50
scoreboard players set @s mvm_ammo1 25

execute as @e[type=armor_stand,name="mvm_Stickybomb"] at @s if score @s mvm_id = @p[scores={mvm_class=1}] mvm_id run function mvm:classes/demoman/sticky_explode

give @s spyglass{Charged:1b,slot1:1b,weapon:1b}