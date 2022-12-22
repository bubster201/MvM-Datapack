clear @s

scoreboard players set @s mvm_maxAmmo1 32
scoreboard players set @s mvm_maxAmmo2 32
scoreboard players set @s mvm_class 4
scoreboard players set @s mvm_reloadSpeed1 20
scoreboard players set @s mvm_reloadSpeed2 40
scoreboard players set @s mvm_ammo1 32
scoreboard players set @s mvm_ammo2 32

item replace entity @s hotbar.8 with tipped_arrow{CustomPotionColor:22}
give @s bow{slot2:1b,weapon:1b}