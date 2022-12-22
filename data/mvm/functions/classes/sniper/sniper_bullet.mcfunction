scoreboard players add @s mvm_distance 1
execute as @s[scores={mvm_distance=..300}] unless entity @e[type=marker,name="mvm_Hitbox",distance=..0.3] run particle mycelium ~ ~ ~ 0 0 0 0 1 force
execute as @s[scores={mvm_distance=..300}] unless entity @e[type=marker,name="mvm_Hitbox",distance=..0.3] positioned ^ ^ ^0.2 run function mvm:classes/sniper/sniper_bullet
execute as @e[type=marker,name="mvm_Hitbox",tag=mvm_headHitbox,distance=..0.3,limit=1,sort=nearest] run tag @e[team=mvm_enemies,limit=1,sort=nearest] add mvm_damageCrit
scoreboard players operation @e[type=marker,name="mvm_Hitbox",distance=..0.3,limit=1,sort=nearest] mvm_damageDealer = @s mvm_id
execute as @e[type=marker,name="mvm_Hitbox",distance=..0.3,limit=1,sort=nearest] at @s run scoreboard players operation @e[team=mvm_enemies,limit=1,sort=nearest] mvm_damageDealer = @s mvm_damageDealer
execute as @e[type=marker,name="mvm_Hitbox",distance=..0.3,limit=1,sort=nearest] at @s run scoreboard players set @e[team=mvm_enemies,limit=1,sort=nearest] mvm_applyDamage 50