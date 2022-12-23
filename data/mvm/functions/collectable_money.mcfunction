scoreboard players add @s mvm_timer 1
execute as @s[scores={mvm_timer=0..20}] at @s run data merge entity @s {Motion:[0.0d,0.0d,0.0d]}
execute if entity @p[team=mvm_players,distance=..2] run scoreboard players operation $waveMoney mvm_money += @s mvm_value
execute if entity @p[team=mvm_players,distance=..2] run kill @s
tp @s ^ ^ ^0.1 facing entity @p[scores={mvm_class=1},distance=..7] feet