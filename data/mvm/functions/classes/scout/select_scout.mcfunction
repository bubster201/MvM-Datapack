clear @s

scoreboard players set @s mvm_maxClip1 6
scoreboard players set @s mvm_maxAmmo1 32
scoreboard players set @s mvm_class 1
scoreboard players set @s mvm_reloadSpeed1 20
scoreboard players set @s mvm_reloadSpeed2 100
scoreboard players set @s mvm_ammo1 32
scoreboard players set @s mvm_ammo2 1
scoreboard players set @s mvm_maxHealth 125
scoreboard players set @s mvm_health 125

execute as @e[type=armor_stand,name="mvm_Stickybomb"] at @s if score @s mvm_id = @p[scores={mvm_class=1}] mvm_id run function mvm:classes/demoman/sticky_explode

item replace entity @s hotbar.0 with crossbow{display:{Name:'{"text":"Scattergun"}'},ChargedProjectiles:[{id:"minecraft:tipped_arrow",Count:1b,tag:{CustomPotionColor:11}}],Charged:1b,mvm_slot1:1b,mvm_weapon:1b}
item replace entity @s hotbar.1 with minecraft:lingering_potion{display:{Name:'{"text":"Mad Milk"}'},CustomPotionColor:16777215,Potion:"minecraft:luck"}
item replace entity @s hotbar.2 with minecraft:netherite_axe{mvm_slot3:1b,mvm_weapon:1b}