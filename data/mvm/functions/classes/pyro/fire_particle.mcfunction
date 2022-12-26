particle dust 1 0.467 0 1 ~ ~ ~ 0.1 0.1 0.1 0 3
tp @s ^ ^ ^-0.8
execute as @e[type=marker,name="mvm_Hitbox",distance=..1] at @s run tag @e[team=mvm_enemies,limit=1,sort=nearest] add mvm_burning
execute as @e[type=marker,name="mvm_Hitbox",distance=..1] at @s run scoreboard players set @e[team=mvm_enemies,limit=1,sort=nearest] mvm_burnTime 0
execute as @s[tag=mvm_critBoosted] as @e[type=marker,name="mvm_Hitbox",distance=..1,limit=1,sort=nearest] run tag @e[team=mvm_enemies,limit=1,sort=nearest] add mvm_damageCrit
execute as @s[tag=mvm_buffed] as @e[type=marker,name="mvm_Hitbox",distance=..1,limit=1,sort=nearest] run tag @e[team=mvm_enemies,limit=1,sort=nearest] add mvm_damageMinicrit
scoreboard players operation @e[type=marker,name="mvm_Hitbox",distance=..1,limit=1,sort=nearest] mvm_damageDealer = @s mvm_id
execute as @e[type=marker,name="mvm_Hitbox",distance=..1,limit=1,sort=nearest] at @s run scoreboard players operation @e[team=mvm_enemies,limit=1,sort=nearest] mvm_damageDealer = @s mvm_damageDealer
execute as @e[type=marker,name="mvm_Hitbox",distance=..1,limit=1,sort=nearest] at @s run scoreboard players add @e[team=mvm_enemies,limit=1,sort=nearest] mvm_applyDamage 9
execute if entity @e[type=marker,name="mvm_Hitbox",distance=..1] run kill @s
scoreboard players add @s mvm_timer 1 
execute as @s[scores={mvm_timer=10..}] run kill @s

#execute as @s[tag=mvm_critBoosted] as @e[type=marker,name="mvm_Hitbox",distance=..1,limit=1,sort=nearest] run tag @e[team=mvm_enemies,limit=1,sort=nearest] add mvm_damageCrit
#execute as @s[tag=mvm_buffed] as @e[type=marker,name="mvm_Hitbox",distance=..1,limit=1,sort=nearest] run tag @e[team=mvm_enemies,limit=1,sort=nearest] add mvm_damageMinicrit
#scoreboard players operation @e[type=marker,name="mvm_Hitbox",distance=..1,limit=1,sort=nearest] mvm_damageDealer = @s mvm_id
#execute as @e[type=marker,name="mvm_Hitbox",distance=..1,limit=1,sort=nearest] at @s run scoreboard players operation @e[team=mvm_enemies,limit=1,sort=nearest] mvm_damageDealer = @s mvm_damageDealer
#execute as @e[type=marker,name="mvm_Hitbox",distance=..1,limit=1,sort=nearest] at @s run scoreboard players add @e[team=mvm_enemies,limit=1,sort=nearest] mvm_applyDamage 9