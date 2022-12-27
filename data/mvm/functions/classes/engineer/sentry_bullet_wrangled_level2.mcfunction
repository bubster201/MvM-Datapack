scoreboard players add @s mvm_distance 1
execute as @s[scores={mvm_distance=..300},tag=!mvm_critBoosted] unless entity @e[type=marker,name="mvm_Hitbox",distance=..1] run particle mycelium ~ ~ ~ 0 0 0 0 1 force
execute as @s[scores={mvm_distance=..300}] unless entity @e[type=marker,name="mvm_Hitbox",distance=..1] positioned ^ ^ ^0.2 if block ~ ~ ~ minecraft:air run function mvm:classes/engineer/sentry_bullet_wrangled_level2
execute as @e[type=marker,name="mvm_Hitbox",distance=..1] at @s run execute as @e[team=mvm_enemies,limit=1,sort=nearest] at @s run summon snowball ~ ~3 ~ {CustomName:'"mvm_SentryAggrivator"',Motion:[0.0d,-1.0d,0.0d]}
data modify entity @e[type=snowball,name="mvm_SentryAggrivator",limit=1] Owner set from entity @s UUID
execute as @s[tag=mvm_buffed] as @e[type=marker,name="mvm_Hitbox",distance=..1,limit=1,sort=nearest] run tag @e[team=mvm_enemies,limit=1,sort=nearest] add mvm_damageMinicrit
scoreboard players operation @e[type=marker,name="mvm_Hitbox",distance=..1,limit=1,sort=nearest] mvm_damageDealer = @s mvm_id
execute as @e[type=marker,name="mvm_Hitbox",distance=..1,limit=1,sort=nearest] at @s run scoreboard players operation @e[team=mvm_enemies,limit=1,sort=nearest] mvm_damageDealer = @s mvm_damageDealer
execute as @e[type=marker,name="mvm_Hitbox",distance=..1,limit=1,sort=nearest] at @s run tag @e[team=mvm_enemies,limit=1,sort=nearest] add mvm_damageSentry
execute as @e[type=marker,name="mvm_Hitbox",distance=..1,limit=1,sort=nearest] at @s run scoreboard players add @e[team=mvm_enemies,limit=1,sort=nearest] mvm_applyDamage 32