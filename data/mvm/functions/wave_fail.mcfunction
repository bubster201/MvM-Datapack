execute as @e[type=marker,name="mvm_Node",tag=mvm_hatch] at @s run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 10000 0.5
execute as @e[type=marker,name="mvm_Node",tag=mvm_hatch] at @s run playsound minecraft:entity.evoker.death master @a ~ ~ ~ 10000 0.5
execute as @e[type=marker,name="mvm_Node",tag=mvm_hatch] at @s run particle minecraft:explosion_emitter ~ ~ ~ 0.1 0.1 0.1 0 1
function mvm:wave_reset