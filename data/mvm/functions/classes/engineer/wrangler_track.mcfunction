execute as @e[type=armor_stand,tag=mvm_building,name="mvm_SentryGun"] run scoreboard players operation @s mvm_buildingIdDiff = @s mvm_id
scoreboard players operation @e[type=armor_stand,tag=mvm_building,name="mvm_SentryGun"] mvm_buildingIdDiff -= @s mvm_id

execute as @e[type=marker,name="mvm_WranglerMarker"] run scoreboard players operation @s mvm_buildingIdDiff = @s mvm_id
scoreboard players operation @e[type=marker,name="mvm_WranglerMarker"] mvm_buildingIdDiff -= @s mvm_id
execute as @e[type=armor_stand,name="mvm_SentryGun",limit=1,sort=nearest,scores={mvm_buildingIdDiff=0}] at @s positioned ~ ~ ~ run tp @s ~ ~ ~ facing entity @e[type=marker,name="mvm_WranglerMarker",scores={mvm_buildingIdDiff=0},limit=1,sort=nearest] feet

tag @e[type=armor_stand,name="mvm_SentryGun",limit=1,sort=nearest,scores={mvm_buildingIdDiff=0}] add mvm_wrangled
scoreboard players set @e[type=armor_stand,name="mvm_SentryGun",limit=1,sort=nearest,scores={mvm_buildingIdDiff=0}] mvm_distance 0
execute as @e[type=armor_stand,name="mvm_SentryGun",limit=1,sort=nearest,scores={mvm_buildingIdDiff=0}] at @s positioned ~ ~ ~ run function mvm:classes/engineer/wrangler_beam

kill @e[type=marker,name="mvm_WranglerMarker"]