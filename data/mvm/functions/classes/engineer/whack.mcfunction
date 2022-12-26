scoreboard players set @s[scores={mvm_metal=51..}] mvm_metalReference 50
scoreboard players operation @s[scores={mvm_metal=..50}] mvm_metalReference = @s mvm_metal
execute as @s[scores={mvm_metal=0}] at @s run execute as @e[type=armor_stand,tag=mvm_building,limit=1,sort=nearest,distance=..2] run playsound minecraft:block.note_block.cow_bell master @a ~ ~ ~ 5 2


#Building health
scoreboard players operation @s mvm_metalReference *= $3 mvm_vars
execute as @s[scores={mvm_metal=1..}] at @s run execute as @e[type=armor_stand,tag=mvm_building,limit=1,sort=nearest,distance=..2] if score @s mvm_health = @s mvm_maxHealth run playsound minecraft:block.note_block.cow_bell master @a ~ ~ ~ 5 2
execute as @s[scores={mvm_metal=1..}] at @s run execute as @e[type=armor_stand,tag=mvm_building,limit=1,sort=nearest,distance=..2] unless score @s mvm_health = @s mvm_maxHealth run playsound minecraft:block.amethyst_block.break master @a ~ ~ ~ 5 0.5

execute as @e[type=armor_stand,tag=mvm_building,limit=1,sort=nearest,distance=..2] if score @s mvm_health < @s mvm_maxHealth run function mvm:classes/engineer/whacked_get_health

execute if score @s[scores={mvm_metalReference=1..}] mvm_metalReference < @e[type=armor_stand,tag=mvm_building,limit=1,sort=nearest,distance=..2] mvm_metalReference if score @e[type=armor_stand,tag=mvm_building,limit=1,sort=nearest,distance=..2] mvm_health < @e[type=armor_stand,tag=mvm_building,limit=1,sort=nearest,distance=..2] mvm_maxHealth run function mvm:classes/engineer/whacked_apply_health_part
execute if score @s mvm_metalReference >= @e[type=armor_stand,tag=mvm_building,limit=1,sort=nearest,distance=..2] mvm_metalReference if score @e[type=armor_stand,tag=mvm_building,limit=1,sort=nearest,distance=..2] mvm_health < @e[type=armor_stand,tag=mvm_building,limit=1,sort=nearest,distance=..2] mvm_maxHealth run function mvm:classes/engineer/whacked_apply_health_full
scoreboard players operation @s mvm_metalReference /= $3 mvm_vars

#Sentry ammo
execute as @s[scores={mvm_metal=1..}] at @s run execute as @e[type=armor_stand,tag=mvm_building,name="mvm_SentryGun",limit=1,sort=nearest,distance=..2] if score @s mvm_ammo1 = @s mvm_maxAmmo1 run playsound minecraft:block.note_block.cow_bell master @a ~ ~ ~ 5 2
execute as @s[scores={mvm_metal=1..}] at @s run execute as @e[type=armor_stand,tag=mvm_building,name="mvm_SentryGun",limit=1,sort=nearest,distance=..2] unless score @s mvm_ammo1 = @s mvm_maxAmmo1 run playsound minecraft:block.amethyst_block.break master @a ~ ~ ~ 5 0.5

execute as @e[type=armor_stand,tag=mvm_building,limit=1,sort=nearest,distance=..2] if score @s mvm_ammo1 < @s mvm_maxAmmo1 run function mvm:classes/engineer/whacked_get_ammo

execute if score @s[scores={mvm_metalReference=1..}] mvm_metalReference < @e[type=armor_stand,tag=mvm_building,name="mvm_SentryGun",limit=1,sort=nearest,distance=..2] mvm_metalReference if score @e[type=armor_stand,tag=mvm_building,name="mvm_SentryGun",limit=1,sort=nearest,distance=..2] mvm_ammo1 < @e[type=armor_stand,tag=mvm_building,name="mvm_SentryGun",limit=1,sort=nearest,distance=..2] mvm_maxAmmo1 run function mvm:classes/engineer/whacked_apply_ammo_part
execute if score @s mvm_metalReference >= @e[type=armor_stand,tag=mvm_building,limit=1,name="mvm_SentryGun",sort=nearest,distance=..2] mvm_metalReference if score @e[type=armor_stand,tag=mvm_building,name="mvm_SentryGun",limit=1,sort=nearest,distance=..2] mvm_ammo1 < @e[type=armor_stand,tag=mvm_building,name="mvm_SentryGun",limit=1,sort=nearest,distance=..2] mvm_maxAmmo1 run function mvm:classes/engineer/whacked_apply_ammo_full