
execute as @e[type=marker,name="mvm_Hitbox",distance=..3,limit=1,sort=nearest] at @s run function mvm:classes/pyro/flare_hit
execute if entity @e[type=marker,name="mvm_Hitbox",distance=..3] run kill @s
kill @s[nbt={inGround:1b}]