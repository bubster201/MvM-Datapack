scoreboard players add @s mvm_distance 1

particle angry_villager

execute as @s[scores={mvm_distance=..10}] unless entity @e[type=marker,name="mvm_PlayerHitbox",distance=..1] positioned ^ ^ ^0.2 if block ~ ~ ~ minecraft:air run function mvm:enemies/bat_scout/bat_scout_tracer
execute as @s[tag=mvm_critBoosted] as @e[type=marker,name="mvm_PlayerHitbox",distance=..1,limit=1,sort=nearest] run tag @e[team=mvm_players,limit=1,sort=nearest] add mvm_damageCrit
execute as @s[tag=mvm_buffed] as @e[type=marker,name="mvm_PlayerHitbox",distance=..1,limit=1,sort=nearest] run tag @e[team=mvm_players,limit=1,sort=nearest] add mvm_damageMinicrit
execute as @e[type=marker,name="mvm_PlayerHitbox",distance=..1,limit=1,sort=nearest] at @s run scoreboard players add @e[team=mvm_players,limit=1,sort=nearest] mvm_playerDamage 9
execute as @e[type=marker,name="mvm_PlayerHitbox",distance=..1,limit=1,sort=nearest] at @s run tag @e[team=mvm_players,limit=1,sort=nearest] add mvm_dTypeMelee