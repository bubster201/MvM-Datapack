scoreboard players add @s mvm_distance 1
execute as @s[scores={mvm_distance=..100}] unless entity @e[type=marker,name="mvm_Hitbox",distance=..0.5] run particle mycelium ~ ~ ~ 0 0 0 0 1 force
execute as @s[scores={mvm_distance=..100}] unless entity @e[type=marker,name="mvm_Hitbox",distance=..0.5] positioned ^ ^ ^0.2 if block ~ ~ ~ minecraft:air run function mvm:hitscan_bullet
execute as @e[type=marker,name="mvm_Hitbox",distance=..0.5] at @s run execute as @e[team=mvm_enemies,limit=1,sort=nearest] at @s if entity @s[tag=mvm_milked] run effect give @p[tag=mvm_fired] instant_health 1 0 true
execute as @e[type=marker,name="mvm_Hitbox",distance=..0.5] at @s run execute as @e[team=mvm_enemies,limit=1,sort=nearest] at @s run function mvm:damage/damage_5