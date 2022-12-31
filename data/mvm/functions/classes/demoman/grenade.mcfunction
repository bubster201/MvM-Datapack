execute as @s run scoreboard players add @s mvm_timer 1
execute as @s[tag=mvm_critBoosted] run particle electric_spark ~ ~1 ~ 0.15 0.15 0.15 0 1
tp @e[type=slime,name="mvm_BoundingBox",distance=..10] ~ ~20 ~
execute if entity @e[team=mvm_enemies,distance=..5] if block ~ ~-0.1 ~ air run function mvm:classes/demoman/grenade_explode_strong
execute as @s[scores={mvm_timer=60..}] run function mvm:classes/demoman/grenade_explode_weak


