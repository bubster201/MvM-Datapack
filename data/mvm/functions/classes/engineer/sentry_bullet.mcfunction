scoreboard players add @s mvm_distance 1
execute as @s[scores={mvm_distance=..100}] unless entity @e[type=marker,name="mvm_Hitbox",distance=..0.3] run particle mycelium ~ ~ ~ 0 0 0 0 1 force
execute as @s[scores={mvm_distance=..100}] unless entity @e[type=marker,name="mvm_Hitbox",distance=..0.3] positioned ^ ^ ^0.2 run function mvm:classes/engineer/sentry_bullet
execute as @e[type=marker,name="mvm_Hitbox",distance=..0.3] at @s run execute as @e[team=mvm_enemies,limit=1,sort=nearest] at @s run summon snowball ~ ~3 ~ {CustomName:'"mvm_SentryAggrivator"',Motion:[0.0d,-1.0d,0.0d]}
data modify entity @e[type=snowball,name="mvm_SentryAggrivator",limit=1] Owner set from entity @s UUID
execute as @e[type=marker,name="mvm_Hitbox",distance=..0.3] at @s run execute as @e[team=mvm_enemies,limit=1,sort=nearest] at @s run function mvm:damage/damage_16_sentry