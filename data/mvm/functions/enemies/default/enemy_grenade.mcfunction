execute as @s run scoreboard players add @s mvm_timer 1
execute as @s[tag=mvm_critBoosted] run particle electric_spark ~ ~1 ~ 0.15 0.15 0.15 0 1
kill @s[scores={mvm_timer=60..}]


