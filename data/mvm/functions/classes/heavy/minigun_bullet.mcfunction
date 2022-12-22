scoreboard players add @s mvm_distance 1
execute as @s[scores={mvm_distance=..100},tag=!mvm_critBoosted] unless entity @e[type=marker,name="mvm_Hitbox",distance=..0.3] run particle mycelium ~ ~ ~ 0 0 0 0 1 force
execute as @s[scores={mvm_distance=..100},tag=mvm_critBoosted] unless entity @e[type=marker,name="mvm_Hitbox",distance=..0.3] run particle dust 1 0 0 0.5 ~ ~ ~ 0 0 0 0 1 force
execute as @s[scores={mvm_distance=..100}] unless entity @e[type=marker,name="mvm_Hitbox",distance=..0.3] positioned ^ ^ ^0.2 run function mvm:classes/heavy/minigun_bullet
execute as @s[tag=mvm_critBoosted] as @e[type=marker,name="mvm_Hitbox",distance=..0.3,limit=1,sort=nearest] run tag @e[team=mvm_enemies,limit=1,sort=nearest] add mvm_damageCrit
scoreboard players operation @e[type=marker,name="mvm_Hitbox",distance=..0.3,limit=1,sort=nearest] mvm_damageDealer = @s mvm_id
execute as @e[type=marker,name="mvm_Hitbox",distance=..0.3,limit=1,sort=nearest] at @s run scoreboard players operation @e[team=mvm_enemies,limit=1,sort=nearest] mvm_damageDealer = @s mvm_damageDealer
execute as @e[type=marker,name="mvm_Hitbox",distance=..0.3,limit=1,sort=nearest] at @s run scoreboard players set @e[team=mvm_enemies,limit=1,sort=nearest] mvm_applyDamage 18