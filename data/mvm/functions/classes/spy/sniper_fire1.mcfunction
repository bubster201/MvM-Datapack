#Center row
function mvm:classes/sniper/sniper_bullet
playsound minecraft:entity.blaze.hurt master @a ~ ~ ~ 10000 2

scoreboard players remove @s mvm_ammo1 1
scoreboard players operation @s mvm_reload1 = @s mvm_reloadSpeed1
