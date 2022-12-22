scoreboard players set @s[scores={mvm_timer=0}] mvm_timer 10
scoreboard players set @s mvm_distance 0
execute as @s[scores={mvm_ammo1=0}] run playsound block.dispenser.fail master @a ~ ~ ~ 10000 2
execute as @s[scores={mvm_ammo1=1..}] run playsound block.dispenser.launch master @a ~ ~ ~ 10000 2
execute as @s[scores={mvm_ammo1=1..}] run function mvm:classes/engineer/sentry_bullet
scoreboard players remove @s[scores={mvm_ammo1=1..}] mvm_ammo1 1 