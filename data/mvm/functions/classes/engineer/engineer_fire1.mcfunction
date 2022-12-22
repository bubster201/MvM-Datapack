#Center row
tag @s add mvm_fired
function mvm:hitscan_bullet
scoreboard players set @s mvm_distance 0
execute facing ^1 ^ ^10 run function mvm:hitscan_bullet
scoreboard players set @s mvm_distance 0
execute facing ^-1 ^ ^10 run function mvm:hitscan_bullet

scoreboard players set @s mvm_distance 0
execute facing ^-1 ^1 ^10 run function mvm:hitscan_bullet
scoreboard players set @s mvm_distance 0
execute facing ^ ^1 ^10 run function mvm:hitscan_bullet
scoreboard players set @s mvm_distance 0
execute facing ^1 ^1 ^10 run function mvm:hitscan_bullet

scoreboard players set @s mvm_distance 0
execute facing ^-1 ^-1 ^10 run function mvm:hitscan_bullet
scoreboard players set @s mvm_distance 0
execute facing ^ ^-1 ^10 run function mvm:hitscan_bullet
scoreboard players set @s mvm_distance 0
execute facing ^1 ^-1 ^10 run function mvm:hitscan_bullet

scoreboard players remove @s mvm_ammo1 1
scoreboard players operation @s mvm_reload1 = @s mvm_reloadSpeed1
tag @s remove mvm_fired