scoreboard players add @s mvm_distance 1

execute unless block ~ ~ ~ air run summon marker ~ ~ ~ {CustomName:'"mvm_WranglerMarker"'}
execute unless block ~ ~ ~ air run scoreboard players operation @e[type=marker,name="mvm_WranglerMarker",limit=1,sort=nearest] mvm_id = @s mvm_id
execute unless block ~ ~ ~ air run scoreboard players set @s mvm_distance 604

execute as @s[scores={mvm_distance=301}] run summon marker ~ ~ ~ {CustomName:'"mvm_WranglerMarker"'}
execute as @s[scores={mvm_distance=301}] run scoreboard players operation @e[type=marker,name="mvm_WranglerMarker",limit=1,sort=nearest] mvm_id = @s mvm_id


#execute as @e[name="mvm_WranglerMarker"] at @s run particle explosion ~ ~ ~ 0 0 0 0 1 force

execute as @s[scores={mvm_distance=..300}] positioned ^ ^ ^0.2 run function mvm:classes/engineer/wrangler_tracer