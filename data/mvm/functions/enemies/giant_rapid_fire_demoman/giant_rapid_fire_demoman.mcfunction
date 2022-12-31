execute if score $tick mvm_timer matches 1 if entity @a[team=mvm_players,distance=..20] rotated ~ 0 positioned ^ ^1 ^1 run function mvm:enemies/giant_rapid_fire_demoman/fire_grenade

execute as @e[type=marker,name="mvm_Hitbox"] run scoreboard players operation @s mvm_enemyIdDiff = @s mvm_enemyId
scoreboard players operation @e[type=marker,name="mvm_Hitbox"] mvm_enemyIdDiff -= @s mvm_enemyId

execute as @e[type=armor_stand,name="mvm_Model"] run scoreboard players operation @s mvm_enemyIdDiff = @s mvm_enemyId
scoreboard players operation @e[type=armor_stand,name="mvm_Model"] mvm_enemyIdDiff -= @s mvm_enemyId

execute unless entity @e[type=armor_stand,name="mvm_Model",limit=1,sort=nearest,scores={mvm_enemyIdDiff=0}] run function mvm:enemies/giant_rapid_fire_demoman/create_model

effect give @s minecraft:invisibility 999999 0 true

#Left leg
execute rotated ~ 0 run tp @e[type=marker,name="mvm_Hitbox",limit=1,sort=nearest,scores={mvm_enemyIdDiff=0,mvm_hitboxId=1}] ^0.4 ^0 ^0.8
execute rotated ~ 0 run tp @e[type=marker,name="mvm_Hitbox",limit=1,sort=nearest,scores={mvm_enemyIdDiff=0,mvm_hitboxId=2}] ^0.4 ^0.4 ^0.8
execute rotated ~ 0 run tp @e[type=marker,name="mvm_Hitbox",limit=1,sort=nearest,scores={mvm_enemyIdDiff=0,mvm_hitboxId=3}] ^0.4 ^0.8 ^0.4
execute rotated ~ 0 run tp @e[type=marker,name="mvm_Hitbox",limit=1,sort=nearest,scores={mvm_enemyIdDiff=0,mvm_hitboxId=4}] ^0.4 ^1.2 ^

#Right leg
execute rotated ~ 0 run tp @e[type=marker,name="mvm_Hitbox",limit=1,sort=nearest,scores={mvm_enemyIdDiff=0,mvm_hitboxId=5}] ^-0.8 ^0 ^-1.6
execute rotated ~ 0 run tp @e[type=marker,name="mvm_Hitbox",limit=1,sort=nearest,scores={mvm_enemyIdDiff=0,mvm_hitboxId=6}] ^-0.8 ^0.4 ^-1.2
execute rotated ~ 0 run tp @e[type=marker,name="mvm_Hitbox",limit=1,sort=nearest,scores={mvm_enemyIdDiff=0,mvm_hitboxId=7}] ^-0.8 ^0.8 ^-0.8
execute rotated ~ 0 run tp @e[type=marker,name="mvm_Hitbox",limit=1,sort=nearest,scores={mvm_enemyIdDiff=0,mvm_hitboxId=8}] ^-0.4 ^1.2 ^-0.8

#Torso
execute rotated ~ 0 run tp @e[type=marker,name="mvm_Hitbox",limit=1,sort=nearest,scores={mvm_enemyIdDiff=0,mvm_hitboxId=9}] ^ ^1.6 ^-0.4
execute rotated ~ 0 run tp @e[type=marker,name="mvm_Hitbox",limit=1,sort=nearest,scores={mvm_enemyIdDiff=0,mvm_hitboxId=10}] ^-0.4 ^1.6 ^-0.4
execute rotated ~ 0 run tp @e[type=marker,name="mvm_Hitbox",limit=1,sort=nearest,scores={mvm_enemyIdDiff=0,mvm_hitboxId=11}] ^0.4 ^1.6 ^-0.4

execute rotated ~ 0 run tp @e[type=marker,name="mvm_Hitbox",limit=1,sort=nearest,scores={mvm_enemyIdDiff=0,mvm_hitboxId=12}] ^ ^2.0 ^-0.4
execute rotated ~ 0 run tp @e[type=marker,name="mvm_Hitbox",limit=1,sort=nearest,scores={mvm_enemyIdDiff=0,mvm_hitboxId=13}] ^-0.4 ^2.0 ^-0.4
execute rotated ~ 0 run tp @e[type=marker,name="mvm_Hitbox",limit=1,sort=nearest,scores={mvm_enemyIdDiff=0,mvm_hitboxId=14}] ^0.4 ^2.0 ^-0.4

execute rotated ~ 0 run tp @e[type=marker,name="mvm_Hitbox",limit=1,sort=nearest,scores={mvm_enemyIdDiff=0,mvm_hitboxId=15}] ^0.4 ^2.4 ^
execute rotated ~ 0 run tp @e[type=marker,name="mvm_Hitbox",limit=1,sort=nearest,scores={mvm_enemyIdDiff=0,mvm_hitboxId=16}] ^ ^2.4 ^-0.4
execute rotated ~ 0 run tp @e[type=marker,name="mvm_Hitbox",limit=1,sort=nearest,scores={mvm_enemyIdDiff=0,mvm_hitboxId=17}] ^-0.4 ^2.4 ^-0.4

execute rotated ~ 0 run tp @e[type=marker,name="mvm_Hitbox",limit=1,sort=nearest,scores={mvm_enemyIdDiff=0,mvm_hitboxId=18}] ^-0.4 ^2.8 ^
execute rotated ~ 0 run tp @e[type=marker,name="mvm_Hitbox",limit=1,sort=nearest,scores={mvm_enemyIdDiff=0,mvm_hitboxId=19}] ^ ^2.8 ^

#Left arm
execute rotated ~ 0 run tp @e[type=marker,name="mvm_Hitbox",limit=1,sort=nearest,scores={mvm_enemyIdDiff=0,mvm_hitboxId=20}] ^0.4 ^2.8 ^0.4
execute rotated ~ 0 run tp @e[type=marker,name="mvm_Hitbox",limit=1,sort=nearest,scores={mvm_enemyIdDiff=0,mvm_hitboxId=21}] ^0.4 ^2.4 ^0.8
execute rotated ~ 0 run tp @e[type=marker,name="mvm_Hitbox",limit=1,sort=nearest,scores={mvm_enemyIdDiff=0,mvm_hitboxId=22}] ^ ^2.0 ^0.8

#Right arm
execute rotated ~ 0 run tp @e[type=marker,name="mvm_Hitbox",limit=1,sort=nearest,scores={mvm_enemyIdDiff=0,mvm_hitboxId=23}] ^-0.8 ^2.8 ^-0.4
execute rotated ~ 0 run tp @e[type=marker,name="mvm_Hitbox",limit=1,sort=nearest,scores={mvm_enemyIdDiff=0,mvm_hitboxId=24}] ^-1.2 ^2.4 ^-0.4
execute rotated ~ 0 run tp @e[type=marker,name="mvm_Hitbox",limit=1,sort=nearest,scores={mvm_enemyIdDiff=0,mvm_hitboxId=25}] ^-1.2 ^2.0 ^
execute rotated ~ 0 run tp @e[type=marker,name="mvm_Hitbox",limit=1,sort=nearest,scores={mvm_enemyIdDiff=0,mvm_hitboxId=26}] ^-0.8 ^2.0 ^0.4

#Back / head
execute rotated ~ 0 run tp @e[type=marker,name="mvm_Hitbox",limit=1,sort=nearest,scores={mvm_enemyIdDiff=0,mvm_hitboxId=27}] ^ ^10 ^
execute rotated ~ 0 run tp @e[type=marker,name="mvm_Hitbox",limit=1,sort=nearest,scores={mvm_enemyIdDiff=0,mvm_hitboxId=28}] ^ ^10 ^
execute rotated ~ 0 run tp @e[type=marker,name="mvm_Hitbox",limit=1,sort=nearest,scores={mvm_enemyIdDiff=0,mvm_hitboxId=29}] ^ ^10 ^
execute rotated ~ 0 run tp @e[type=marker,name="mvm_Hitbox",limit=1,sort=nearest,scores={mvm_enemyIdDiff=0,mvm_hitboxId=30}] ^ ^3.2 ^0.4

#Weapon

execute rotated ~ 0 run tp @e[type=marker,name="mvm_Hitbox",limit=1,sort=nearest,scores={mvm_enemyIdDiff=0,mvm_hitboxId=31}] ^-0.4 ^2.0 ^0.4
execute rotated ~ 0 run tp @e[type=marker,name="mvm_Hitbox",limit=1,sort=nearest,scores={mvm_enemyIdDiff=0,mvm_hitboxId=32}] ^-0.4 ^2.0 ^0.8
execute rotated ~ 0 run tp @e[type=marker,name="mvm_Hitbox",limit=1,sort=nearest,scores={mvm_enemyIdDiff=0,mvm_hitboxId=33}] ^-0.4 ^2.0 ^1.2

data modify entity @e[type=marker,name="mvm_Hitbox",limit=1,sort=nearest,scores={mvm_enemyIdDiff=0,mvm_hitboxId=30}] Rotation set from entity @s Rotation
data modify entity @e[type=marker,name="mvm_Hitbox",limit=1,sort=nearest,scores={mvm_enemyIdDiff=0,mvm_hitboxId=32}] Rotation set from entity @s Rotation
data modify entity @e[type=marker,name="mvm_Hitbox",limit=1,sort=nearest,scores={mvm_enemyIdDiff=0,mvm_hitboxId=33}] Rotation set from entity @s Rotation

#execute rotated ~ 0 run tp @e[type=marker,name="mvm_Hitbox",limit=1,sort=nearest,scores={mvm_enemyIdDiff=0,mvm_hitboxId=9}] ^0.25 ^1.5 ^

#tp @e[type=marker,name="mvm_Hitbox",limit=1,sort=nearest,scores={mvm_enemyIdDiff=0,mvm_hitboxId=21}] ~ ~1.7 ~
#tp @e[type=marker,name="mvm_Hitbox",limit=1,sort=nearest,scores={mvm_enemyIdDiff=0,mvm_hitboxId=19}] ^ ^1.1 ^-0.4
