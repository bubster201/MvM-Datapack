execute as @s[nbt={Item:{tag:{mvm_buildingLevel:0b}}}] run execute as @p[scores={mvm_class=6}] at @s run summon armor_stand ~ ~-1 ~ {CustomName:'"mvm_SentryGun"',Tags:[mvm_level1,mvm_construct,mvm_building],Invulnerable:0b,NoGravity:1b,Small:1b,ArmorItems:[{},{},{},{id:"minecraft:observer",Count:1b}],Attributes:[{Name:"minecraft:generic.max_health",Base: 200000.0d}]}
scoreboard players set @e[type=armor_stand,name="mvm_SentryGun",tag=mvm_construct,limit=1,sort=nearest] mvm_constructTime 0 
scoreboard players set @e[type=armor_stand,name="mvm_SentryGun",tag=mvm_construct,limit=1,sort=nearest] mvm_timer 0
scoreboard players set @e[type=armor_stand,name="mvm_SentryGun",tag=mvm_construct,limit=1,sort=nearest] mvm_ammo1 200
scoreboard players set @e[type=armor_stand,name="mvm_SentryGun",tag=mvm_construct,limit=1,sort=nearest] mvm_maxAmmo1 200
scoreboard players set @e[type=armor_stand,name="mvm_SentryGun",tag=mvm_construct,limit=1,sort=nearest] mvm_ammo2 20
scoreboard players set @e[type=armor_stand,name="mvm_SentryGun",tag=mvm_construct,limit=1,sort=nearest] mvm_health 1000
scoreboard players set @e[type=armor_stand,name="mvm_SentryGun",tag=mvm_construct,limit=1,sort=nearest] mvm_maxHealth 1000
scoreboard players operation @e[type=armor_stand,name="mvm_SentryGun",tag=mvm_construct,limit=1,sort=nearest] mvm_id = @p[scores={mvm_class=6}] mvm_id
team join mvm_players @e[type=armor_stand,name="mvm_SentryGun",tag=mvm_construct,limit=1,sort=nearest]
effect give @e[type=armor_stand,name="mvm_SentryGun",tag=mvm_construct,limit=1,sort=nearest] glowing 999999 0 true

scoreboard players remove @p[scores={mvm_class=6}] mvm_metal 130

kill @s
