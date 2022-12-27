scoreboard players add @s mvm_distance 1
execute as @s positioned ^ ^ ^0.2 run particle dust 1 0 0 0.5 ~ ~ ~ 0 0 0 0 1 force
execute as @s[scores={mvm_distance=..300}] positioned ^ ^ ^0.2 if block ~ ~ ~ air unless entity @e[type=marker,name="mvm_WranglerMarker",distance=..0.3] unless entity @e[team=mvm_enemies,distance=..3] run function mvm:classes/engineer/wrangler_beam