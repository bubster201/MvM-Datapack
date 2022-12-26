clear @s

scoreboard players set @s mvm_maxAmmo1 32
scoreboard players set @s mvm_maxAmmo2 32
scoreboard players set @s mvm_class 4
scoreboard players set @s mvm_reloadSpeed1 20
scoreboard players set @s mvm_reloadSpeed2 40
scoreboard players set @s mvm_ammo1 32
scoreboard players set @s mvm_ammo2 32

item replace entity @s hotbar.8 with tipped_arrow{CustomPotionColor:22}
item replace entity @s hotbar.1 with bow{mvm_slot2:1b,mvm_weapon:1b}
item replace entity @s hotbar.0 with crossbow{display:{Name:'{"text":"Grenade Launcher"}'},ChargedProjectiles:[{id:"minecraft:tipped_arrow",Count:1b,tag:{CustomPotionColor:13107201}}],Charged:1b,mvm_slot1:1b,mvm_weapon:1b}
#13107201