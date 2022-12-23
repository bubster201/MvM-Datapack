scoreboard players add @s mvm_distance 1
execute as @s[scores={mvm_distance=..40}] unless entity @p[team=mvm_players,distance=..1] positioned ^ ^ ^0.2 if block ~ ~ ~ minecraft:air run function mvm:classes/medic/medigun_tracer
execute as @s[scores={mvm_distance=..40}] unless score @p[team=mvm_players,distance=..1] mvm_id > @s mvm_id unless score @p[team=mvm_players,distance=..2] mvm_id < @s mvm_id positioned ^ ^ ^0.2 if block ~ ~ ~ minecraft:air run function mvm:classes/medic/medigun_tracer

execute if score @p[team=mvm_players,distance=..2] mvm_id > @s mvm_id run scoreboard players set @s mvm_medibeamActive 10
execute if score @p[team=mvm_players,distance=..2] mvm_id < @s mvm_id run scoreboard players set @s mvm_medibeamActive 10
execute if score @p[team=mvm_players,distance=..2] mvm_id > @s mvm_id run playsound block.conduit.activate master @a ~ ~ ~ 1 1.4
execute if score @p[team=mvm_players,distance=..2] mvm_id < @s mvm_id run playsound block.conduit.activate master @a ~ ~ ~ 1 1.4

execute if score @p[team=mvm_players,distance=..2] mvm_id > @s mvm_id run scoreboard players operation @s mvm_healTarget = @p[team=mvm_players,distance=..2] mvm_id
execute if score @p[team=mvm_players,distance=..2] mvm_id < @s mvm_id run scoreboard players operation @s mvm_healTarget = @p[team=mvm_players,distance=..2] mvm_id

execute if score @p[team=mvm_players,distance=..2] mvm_id > @s mvm_id run scoreboard players set @s mvm_distance 42
execute if score @p[team=mvm_players,distance=..2] mvm_id < @s mvm_id run scoreboard players set @s mvm_distance 42