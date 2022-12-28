scoreboard players add @s mvm_distance 1
execute as @s[scores={mvm_distance=..20},tag=!mvm_critBoosted] unless entity @e[type=marker,name="mvm_Hitbox",distance=..1] run particle mycelium ~ ~ ~ 0 0 0 0 1 force
execute as @s[scores={mvm_distance=..20},tag=mvm_critBoosted] unless entity @e[type=marker,name="mvm_Hitbox",distance=..1] run particle dust 1 0 0 0.3 ~ ~ ~ 0 0 0 0 1 force
execute as @s[scores={mvm_distance=..20}] unless entity @e[type=marker,name="mvm_Hitbox",distance=..1] positioned ^ ^ ^0.2 if block ~ ~ ~ minecraft:air run function mvm:classes/sniper/bushwacka_tracer
execute as @s[tag=mvm_critBoosted] run tag @e[type=marker,name="mvm_Hitbox",distance=..1,limit=1,sort=nearest] add mvm_damageCrit
execute as @s[tag=mvm_buffed] run tag @e[type=marker,name="mvm_Hitbox",distance=..1,limit=1,sort=nearest] add mvm_damageCrit
tag @e[type=marker,name="mvm_Hitbox",distance=..1,limit=1,sort=nearest,tag=mvm_marked] add mvm_damageCrit
tag @e[type=marker,name="mvm_Hitbox",distance=..1,limit=1,sort=nearest,tag=mvm_jarate] add mvm_damageCrit
scoreboard players operation @e[type=marker,name="mvm_Hitbox",distance=..1,limit=1,sort=nearest] mvm_damageDealer = @s mvm_id
scoreboard players add @e[type=marker,name="mvm_Hitbox",distance=..1,limit=1,sort=nearest] mvm_applyDamage 65