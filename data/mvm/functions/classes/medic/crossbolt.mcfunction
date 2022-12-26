
execute as @s[tag=!mvm_critBoosted] as @e[type=marker,name="mvm_Hitbox",distance=..4,limit=1,sort=nearest] at @s run function mvm:classes/medic/crossbolt_hit_enemy
execute as @s[tag=mvm_critBoosted] as @e[type=marker,name="mvm_Hitbox",distance=..4,limit=1,sort=nearest] at @s run function mvm:classes/medic/crossbolt_hit_enemy_crit
execute if entity @e[type=marker,name="mvm_Hitbox",distance=..4] run kill @s
kill @s[nbt={inGround:1b}]