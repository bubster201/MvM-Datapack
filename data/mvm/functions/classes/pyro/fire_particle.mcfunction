particle dust 1 0.467 0 1 ~ ~ ~ 0.1 0.1 0.1 0 3
tp @s ^ ^ ^-0.8
execute as @e[type=marker,name="mvm_Hitbox",distance=..0.5] at @s run tag @e[team=mvm_enemies,limit=1,sort=nearest] add mvm_burning
execute as @e[type=marker,name="mvm_Hitbox",distance=..0.5] at @s run scoreboard players set @e[team=mvm_enemies,limit=1,sort=nearest] mvm_burnTime 0
execute as @e[type=marker,name="mvm_Hitbox",distance=..0.5] at @s run execute as @e[team=mvm_enemies,limit=1,sort=nearest] at @s run function mvm:damage/damage_10
execute if entity @e[type=marker,name="mvm_Hitbox",distance=..0.5] run kill @s
scoreboard players add @s mvm_timer 1 
execute as @s[scores={mvm_timer=10..}] run kill @s