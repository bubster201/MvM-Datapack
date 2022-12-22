#Center row
tag @s add mvm_fired

scoreboard players operation @s mvm_heavy_spread = @e[type=marker,name="mvm_HeavyRandomSpread",limit=1,sort=random] mvm_heavy_spread
playsound block.stone.hit master @a ~ ~ ~ 10000 2
scoreboard players set @s mvm_distance 0

execute as @s[scores={mvm_heavy_spread=1}] run function mvm:classes/heavy/minigun_bullet
execute as @s[scores={mvm_heavy_spread=2}] facing ^1 ^ ^40 run function mvm:classes/heavy/minigun_bullet
execute as @s[scores={mvm_heavy_spread=3}] facing ^-1 ^ ^40 run function mvm:classes/heavy/minigun_bullet

execute as @s[scores={mvm_heavy_spread=4}] facing ^-1 ^1 ^40 run function mvm:classes/heavy/minigun_bullet
execute as @s[scores={mvm_heavy_spread=5}] facing ^ ^1 ^40 run function mvm:classes/heavy/minigun_bullet
execute as @s[scores={mvm_heavy_spread=6}] facing ^1 ^1 ^40 run function mvm:classes/heavy/minigun_bullet

execute as @s[scores={mvm_heavy_spread=7}] facing ^-1 ^-1 ^40 run function mvm:classes/heavy/minigun_bullet
execute as @s[scores={mvm_heavy_spread=8}] facing ^ ^-1 ^40 run function mvm:classes/heavy/minigun_bullet 
execute as @s[scores={mvm_heavy_spread=9}] facing ^1 ^-1 ^40 run function mvm:classes/heavy/minigun_bullet

scoreboard players remove @s mvm_ammo1 1
scoreboard players operation @s mvm_reload1 = @s mvm_reloadSpeed1
tag @s remove mvm_fired