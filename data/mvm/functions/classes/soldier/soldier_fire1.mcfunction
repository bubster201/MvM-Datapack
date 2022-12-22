#Center row
tag @s add mvm_fired

data merge entity @e[type=firework_rocket,limit=1,sort=nearest] {CustomName:'"mvm_SoldierRocket"',LifeTime:40}
scoreboard players operation @e[type=firework_rocket,limit=1,sort=nearest] mvm_id = @s mvm_id
execute as @s[tag=mvm_critBoosted] run tag @e[type=firework_rocket,limit=1,sort=nearest] add mvm_critBoosted
execute as @e[type=firework_rocket,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ facing entity @p[scores={class=2}] eyes

scoreboard players remove @s mvm_ammo1 1
scoreboard players operation @s mvm_reload1 = @s mvm_reloadSpeed1

tag @s remove mvm_fired