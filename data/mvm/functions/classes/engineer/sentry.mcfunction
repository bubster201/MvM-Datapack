execute run tp @s ~ ~ ~ facing entity @e[team=mvm_enemies,limit=1,sort=nearest,distance=..20] eyes
scoreboard players remove @s[scores={mvm_timer=1..}] mvm_timer 1

execute as @s[tag=mvm_level1] if score @s mvm_timer matches 0 if entity @e[team=mvm_enemies,limit=1,sort=nearest,distance=..20] run function mvm:classes/engineer/sentry_fire_level1
execute as @s[tag=mvm_level2] if score @s mvm_timer matches 0 if entity @e[team=mvm_enemies,limit=1,sort=nearest,distance=..20] run function mvm:classes/engineer/sentry_fire_level2
execute as @s[tag=mvm_level3] if score @s mvm_timer matches 0 if entity @e[team=mvm_enemies,limit=1,sort=nearest,distance=..20] run function mvm:classes/engineer/sentry_fire_level3