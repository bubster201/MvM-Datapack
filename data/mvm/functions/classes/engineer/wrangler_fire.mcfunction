execute as @e[type=armor_stand,tag=mvm_building,name="mvm_SentryGun"] run scoreboard players operation @s mvm_buildingIdDiff = @s mvm_id
scoreboard players operation @e[type=armor_stand,tag=mvm_building,name="mvm_SentryGun"] mvm_buildingIdDiff -= @s mvm_id

execute as @e[type=armor_stand,tag=mvm_building,name="mvm_SentryGun",scores={mvm_buildingIdDiff=0},tag=mvm_level1] at @s run function mvm:classes/engineer/sentry_fire_level1_wrangled
execute as @e[type=armor_stand,tag=mvm_building,name="mvm_SentryGun",scores={mvm_buildingIdDiff=0},tag=mvm_level2] at @s run function mvm:classes/engineer/sentry_fire_level2_wrangled
execute as @e[type=armor_stand,tag=mvm_building,name="mvm_SentryGun",scores={mvm_buildingIdDiff=0},tag=mvm_level3] at @s run function mvm:classes/engineer/sentry_fire_level3_wrangled