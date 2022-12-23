clear @s

scoreboard players set @s mvm_maxClip1 6
scoreboard players set @s mvm_maxAmmo1 32
scoreboard players set @s mvm_class 2
scoreboard players set @s mvm_reloadSpeed1 20
scoreboard players set @s mvm_reloadSpeed2 100
scoreboard players set @s mvm_ammo1 32
scoreboard players set @s mvm_ammo2 1
scoreboard players set @s mvm_buffBannerDamage 0

execute as @e[type=armor_stand,name="mvm_Stickybomb"] at @s if score @s mvm_id = @p[scores={mvm_class=2}] mvm_id run function mvm:classes/demoman/sticky_explode

item replace entity @s hotbar.0 with crossbow{display:{Name:'{"text":"Rocket Launcher"}'},ChargedProjectiles:[{id:"minecraft:firework_rocket",Count:1b}],Charged:1b,mvm_slot1:1b,mvm_weapon:1b}