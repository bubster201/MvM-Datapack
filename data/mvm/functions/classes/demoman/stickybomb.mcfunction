execute as @s[tag=!mvm_stick] at @s run function mvm:classes/demoman/sticky_stick
execute as @s[scores={mvm_timer=..19}] run scoreboard players add @s mvm_timer 1
execute as @s[scores={mvm_timer=18}] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:tnt",Count:1b}]}
execute as @s[tag=mvm_stick] if block ~ ~0.48 ~ air run tp @s ~ ~-0.01 ~
execute as @s[tag=mvm_critBoosted] run particle electric_spark ~ ~1 ~ 0.15 0.15 0.15 0 1