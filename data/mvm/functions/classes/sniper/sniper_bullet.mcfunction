scoreboard players add @s mvm_distance 1
execute as @s[scores={mvm_distance=..300},tag=!mvm_critBoosted] unless entity @e[type=marker,name="mvm_Hitbox",distance=..0.3] run particle mycelium ~ ~ ~ 0 0 0 0 1 force
execute as @s[scores={mvm_distance=..300},tag=mvm_critBoosted] unless entity @e[type=marker,name="mvm_Hitbox",distance=..0.3] run particle dust 1 0 0 0.3 ~ ~ ~ 0 0 0 0 1 force
execute as @s[scores={mvm_distance=..300}] unless entity @e[type=marker,name="mvm_Hitbox",distance=..0.3] positioned ^ ^ ^0.2 run function mvm:classes/sniper/sniper_bullet
execute run tag @e[type=marker,name="mvm_Hitbox",tag=mvm_headHitbox,distance=..0.3,limit=1,sort=nearest] add mvm_damageCrit
execute as @s[tag=mvm_critBoosted] run tag @e[type=marker,name="mvm_Hitbox",tag=!mvm_headHitbox,distance=..0.3,limit=1,sort=nearest] add mvm_damageCrit
execute as @s[tag=mvm_buffed] run tag @e[type=marker,name="mvm_Hitbox",tag=!mvm_headHitbox,distance=..0.3,limit=1,sort=nearest] add mvm_damageMinicrit
scoreboard players operation @e[type=marker,name="mvm_Hitbox",distance=..0.3,limit=1,sort=nearest] mvm_damageDealer = @s mvm_id
scoreboard players add @e[type=marker,name="mvm_Hitbox",distance=..0.3,limit=1,sort=nearest] mvm_applyDamage 50