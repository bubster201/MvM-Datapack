scoreboard players add @s mvm_distance 1
execute as @s[scores={mvm_distance=..20}] unless entity @e[type=armor_stand,tag=mvm_building,limit=1,sort=nearest,distance=..2] unless entity @e[type=marker,name="mvm_Hitbox",distance=..1] positioned ^ ^ ^0.2 run function mvm:classes/engineer/whack
execute as @s[tag=mvm_critBoosted] as @e[type=marker,name="mvm_Hitbox",distance=..1,limit=1,sort=nearest] run tag @e[team=mvm_enemies,limit=1,sort=nearest] add mvm_damageCrit
execute as @s[tag=mvm_buffed] as @e[type=marker,name="mvm_Hitbox",distance=..1,limit=1,sort=nearest] run tag @e[team=mvm_enemies,limit=1,sort=nearest] add mvm_damageMinicrit
scoreboard players operation @e[type=marker,name="mvm_Hitbox",distance=..1,limit=1,sort=nearest] mvm_damageDealer = @s mvm_id
execute as @e[type=marker,name="mvm_Hitbox",distance=..1,limit=1,sort=nearest] at @s run scoreboard players operation @e[team=mvm_enemies,limit=1,sort=nearest] mvm_damageDealer = @s mvm_damageDealer
execute as @e[type=marker,name="mvm_Hitbox",distance=..1,limit=1,sort=nearest] at @s run scoreboard players add @e[team=mvm_enemies,limit=1,sort=nearest] mvm_applyDamage 65

execute if entity @e[type=armor_stand,tag=mvm_building,limit=1,sort=nearest,distance=..2] run function mvm:classes/engineer/whack