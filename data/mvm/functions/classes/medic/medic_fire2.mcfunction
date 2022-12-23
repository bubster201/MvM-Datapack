#Center row
execute as @s[scores={mvm_medibeamActive=0}] run scoreboard players set @s mvm_healTarget 0
scoreboard players set @s mvm_distance 0
execute as @s[scores={mvm_medibeamActive=0}] positioned ^ ^ ^2.7 run function mvm:classes/medic/medigun_tracer
scoreboard players set @s mvm_distance 0
execute as @s[scores={mvm_medibeamActive=1..,mvm_healTarget=1..}] positioned ^ ^ ^2.7 run function mvm:classes/medic/medibeam