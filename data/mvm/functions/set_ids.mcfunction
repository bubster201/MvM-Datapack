scoreboard objectives remove mvm_id
scoreboard objectives add mvm_id dummy
scoreboard players set @a[team=mvm_players] mvm_id 0
execute as @a[team=mvm_players] run function mvm:set_id