clear @s
scoreboard players set @s mvm_maxAmmo1 200
scoreboard players set @s mvm_class 7
scoreboard players set @s mvm_reloadSpeed1 30
scoreboard players set @s mvm_ubercharge 0
scoreboard players set @s mvm_buffBannerDamage 0

execute as @e[type=armor_stand,name="mvm_Stickybomb"] at @s if score @s mvm_id = @p[scores={mvm_class=7}] mvm_id run function mvm:classes/demoman/sticky_explode

item replace entity @s hotbar.0 with crossbow{display:{Name:'{"text":"Crusader\'s Crossbow"}'},ChargedProjectiles:[{id:"minecraft:tipped_arrow",Count:1b,tag:{CustomPotionColor:13107207}}],Charged:1b,mvm_slot1:1b,mvm_weapon:1b}
give @s carrot_on_a_stick{mvm_slot2:1b,mvm_weapon:1b,display:{Name:'"The Kritzkreig"'}}