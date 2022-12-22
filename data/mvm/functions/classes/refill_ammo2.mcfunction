execute as @s[scores={mvm_class=1}] run item replace entity @s hotbar.1 with minecraft:lingering_potion{CustomPotionColor:16777215,Potion:"minecraft:luck"}
execute as @s[scores={mvm_class=1}] run scoreboard players add @s mvm_ammo2 1
execute as @s[scores={mvm_class=4}] run item replace entity @s hotbar.8 with tipped_arrow{CustomPotionColor:22}