execute as @s[scores={mvm_class=1}] run item replace entity @s hotbar.1 with minecraft:lingering_potion{CustomPotionColor:16777215,Potion:"minecraft:luck"}
execute as @s[scores={mvm_class=3}] run item replace entity @s hotbar.1 with crossbow{ChargedProjectiles:[{id:"minecraft:tipped_arrow",Count:1b,tag:{CustomPotionColor:13107200}}],Charged:1b,mvm_slot2:1b,mvm_weapon:1b}

execute as @s[scores={mvm_class=8}] run item replace entity @s hotbar.1 with minecraft:lingering_potion{CustomPotionColor:16776960,Potion:"minecraft:luck",CustomModelData:5558}
execute as @s[scores={mvm_class=4}] run item replace entity @s hotbar.8 with tipped_arrow{CustomPotionColor:22,mvm_weapon:1b}