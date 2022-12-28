execute as @e[type=marker,name="mvm_Node",tag=mvm_hatch] at @s run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 10000 0.5
execute as @e[type=marker,name="mvm_Node",tag=mvm_hatch] at @s run playsound minecraft:item.goat_horn.sound.6 master @a ~ ~ ~ 10000 1
execute as @e[type=marker,name="mvm_Node",tag=mvm_hatch] at @s run particle minecraft:explosion_emitter ~ ~ ~ 0.1 0.1 0.1 0 1 force
scoreboard players operation @a mvm_money -= $waveMoney mvm_money
kill @e[type=item,name="mvm_Money"]
kill @e[type=marker,name="mvm_Hitbox"]
function mvm:wave_reset