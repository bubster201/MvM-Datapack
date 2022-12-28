scoreboard players add @s mvm_distance 1
execute as @s[scores={mvm_distance=..100},tag=!mvm_critBoosted] unless entity @e[type=marker,name="mvm_Hitbox",distance=..0.3] run particle mycelium ~ ~ ~ 0 0 0 0 1 force
execute as @s[scores={mvm_distance=..100}] unless entity @e[type=marker,name="mvm_Hitbox",distance=..0.3] positioned ^ ^ ^0.2 if block ~ ~ ~ minecraft:air run function mvm:classes/engineer/sentry_bullet
execute as @s[tag=mvm_buffed] run tag @e[type=marker,name="mvm_Hitbox",distance=..0.3,limit=1,sort=nearest] add mvm_damageMinicrit
scoreboard players operation @e[type=marker,name="mvm_Hitbox",distance=..0.3,limit=1,sort=nearest] mvm_damageDealer = @s mvm_id
tag @e[type=marker,name="mvm_Hitbox",distance=..0.3,limit=1,sort=nearest] add mvm_damageSentry
scoreboard players add @e[type=marker,name="mvm_Hitbox",distance=..0.3,limit=1,sort=nearest] mvm_applyDamage 16