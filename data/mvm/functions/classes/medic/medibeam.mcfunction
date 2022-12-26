scoreboard players add @s mvm_distance 1

execute as @s[scores={mvm_distance=..100}] unless score @p[team=mvm_players,distance=..1] mvm_id = @s mvm_healTarget run particle dust 1 0 0 1 ~ ~ ~ 0 0 0 0 1 force
execute as @s[scores={mvm_distance=..100}] unless entity @p[team=mvm_players,distance=..1] run particle dust 1 0 0 1 ~ ~ ~ 0 0 0 0 1 force

execute as @s[scores={mvm_distance=..20}] unless score @p[team=mvm_players,distance=..1] mvm_id = @s mvm_healTarget positioned ^ ^ ^0.2 run function mvm:classes/medic/medibeam
execute as @s[scores={mvm_distance=..20}] unless entity @p[team=mvm_players,distance=..1] positioned ^ ^ ^0.2 run function mvm:classes/medic/medibeam

execute as @a[team=mvm_players] run scoreboard players operation @s mvm_medibeamIdDiff = @s mvm_id
scoreboard players operation @a[team=mvm_players] mvm_medibeamIdDiff -= @s mvm_healTarget

execute as @s[scores={mvm_distance=21..99}] unless score @p[team=mvm_players,distance=..1] mvm_id = @s mvm_healTarget positioned ^ ^ ^0.2 facing entity @p[team=mvm_players,scores={mvm_medibeamIdDiff=0}] feet run function mvm:classes/medic/medibeam
execute as @s[scores={mvm_distance=21..99}] unless entity @p[team=mvm_players,distance=..1] positioned ^ ^ ^0.2 facing entity @p[team=mvm_players,scores={mvm_medibeamIdDiff=0}] feet run function mvm:classes/medic/medibeam

execute as @s[scores={mvm_distance=..99}] if score @p[team=mvm_players,distance=..1] mvm_id = @s mvm_healTarget run scoreboard players set @s mvm_medibeamActive 10
execute as @s[scores={mvm_distance=..99}] if score @p[team=mvm_players,distance=..1] mvm_id = @s mvm_healTarget run execute as @p[team=mvm_players,distance=..1] run function mvm:classes/medic/heal
execute as @s[scores={mvm_distance=..99},tag=mvm_ubercharge] if score @p[team=mvm_players,distance=..1] mvm_id = @s mvm_healTarget run tag @p[team=mvm_players,distance=..1] add mvm_critBoosted
execute as @s[scores={mvm_distance=..99},tag=mvm_ubercharge] if score @p[team=mvm_players,distance=..1] mvm_id = @s mvm_healTarget run tag @p[team=mvm_players,distance=..1] add mvm_kritz
execute as @s[scores={mvm_distance=..99}] if score @p[team=mvm_players,distance=..1] mvm_id = @s mvm_healTarget run scoreboard players set @s mvm_distance 103

execute as @s[scores={mvm_distance=101}] run scoreboard players set @s mvm_medibeamActive 0