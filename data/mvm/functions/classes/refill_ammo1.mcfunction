execute as @s[scores={mvm_class=1}] run item replace entity @s hotbar.0 with crossbow{ChargedProjectiles:[{id:"minecraft:tipped_arrow",Count:1b,tag:{CustomPotionColor:11}}],Charged:1b,mvm_slot1:1b,mvm_weapon:1b}
execute as @s[scores={mvm_class=2}] run item replace entity @s hotbar.0 with crossbow{display:{Name:'{"text":"Rocket Launcher"}'},ChargedProjectiles:[{id:"minecraft:firework_rocket",Count:1b}],Charged:1b,mvm_slot1:1b,mvm_weapon:1b}

execute as @s[scores={mvm_class=6}] run item replace entity @s hotbar.0 with crossbow{ChargedProjectiles:[{id:"minecraft:tipped_arrow",Count:1b,tag:{CustomPotionColor:22}}],Charged:1b,mvm_slot1:1b,mvm_weapon:1b}

playsound minecraft:ui.button.click master @s ~ ~ ~ 10000 0.8
