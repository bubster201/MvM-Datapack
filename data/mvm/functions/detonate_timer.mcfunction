execute if score $detonateTime mvm_timer matches 100 run playsound block.note_block.banjo master @a ~ ~ ~ 10000 0.5
execute if score $detonateTime mvm_timer matches 80 run playsound block.note_block.banjo master @a ~ ~ ~ 10000 0.5
execute if score $detonateTime mvm_timer matches 60 run playsound block.note_block.banjo master @a ~ ~ ~ 10000 0.5
execute if score $detonateTime mvm_timer matches 40 run playsound block.note_block.banjo master @a ~ ~ ~ 10000 0.5
execute if score $detonateTime mvm_timer matches 20 run playsound block.note_block.banjo master @a ~ ~ ~ 10000 0.5
execute if score $detonateTime mvm_timer >= $2 mvm_vars run scoreboard players remove $detonateTime mvm_timer 1
execute if score $detonateTime mvm_timer < $2 mvm_vars run function mvm:wave_fail