scoreboard players add @s mvm_distance 1
execute as @s[scores={mvm_distance=..20},tag=!mvm_critBoosted] unless entity @e[type=marker,name="mvm_Hitbox",distance=..1] run particle mycelium ~ ~ ~ 0 0 0 0 1 force
execute as @s[scores={mvm_distance=..20},tag=mvm_critBoosted] unless entity @e[type=marker,name="mvm_Hitbox",distance=..1] run particle dust 1 0 0 0.3 ~ ~ ~ 0 0 0 0 1 force
execute as @s[scores={mvm_distance=..20}] unless entity @e[type=marker,name="mvm_Hitbox",distance=..1] positioned ^ ^ ^0.2 if block ~ ~ ~ minecraft:air run function mvm:classes/medic/ubersaw_tracer
execute as @s[tag=mvm_critBoosted] run tag @e[type=marker,name="mvm_Hitbox",distance=..1,limit=1,sort=nearest] add mvm_damageCrit
execute as @s[tag=mvm_buffed] run tag @e[type=marker,name="mvm_Hitbox",distance=..1,limit=1,sort=nearest] add mvm_damageMinicrit
scoreboard players operation @e[type=marker,name="mvm_Hitbox",distance=..1,limit=1,sort=nearest] mvm_damageDealer = @s mvm_id
scoreboard players add @e[type=marker,name="mvm_Hitbox",distance=..1,limit=1,sort=nearest] mvm_applyDamage 65
execute if entity @e[type=marker,name="mvm_Hitbox",distance=..1,limit=1,sort=nearest] run scoreboard players add @s mvm_ubercharge 25
execute as @s[scores={mvm_ubercharge=101..}] run scoreboard players set @s mvm_ubercharge 100