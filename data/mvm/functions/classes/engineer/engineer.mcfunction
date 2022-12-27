execute as @s[scores={mvm_useCrossbow=1..},nbt={SelectedItem:{tag:{mvm_slot1:1b}}}] at @s positioned ~ ~1.5 ~ run function mvm:classes/engineer/engineer_fire1
execute as @e[type=armor_stand,tag=mvm_building,distance=..2] run scoreboard players operation @s mvm_buildingIdDiff = @s mvm_id
scoreboard players operation @e[type=armor_stand,tag=mvm_building,distance=..2] mvm_buildingIdDiff -= @s mvm_id
execute as @s[scores={mvm_crouch=1..,mvm_metal=100..},nbt={SelectedItem:{tag:{mvm_slot1:1b}}}] at @s positioned ~ ~1.75 ~ run function mvm:classes/engineer/rescue_ranger_hitscan

execute as @e[type=item,nbt={Item:{id:"minecraft:iron_axe",tag:{mvm_slot3:1b,mvm_weapon:1b},Count:1b}},distance=..3] at @s run execute as @p[team=mvm_players,scores={mvm_class=6},distance=..3] at @s run function mvm:classes/engineer/whack_toss
kill @e[type=item,nbt={Item:{id:"minecraft:iron_axe",tag:{mvm_slot3:1b,mvm_weapon:1b},Count:1b}},distance=..3]

scoreboard players set @s mvm_distance 0
execute positioned ~ ~1.5 ~ as @s[scores={mvm_useIronAxe=1..},nbt={SelectedItem:{tag:{mvm_slot3:1b}}}] at @s run function mvm:classes/engineer/engineer_fire3
scoreboard players set @s mvm_distance 0
execute as @s[tag=!mvm_haul,scores={mvm_crouch=1..},nbt={SelectedItem:{tag:{mvm_redeploy:1b}}}] at @s run function mvm:classes/engineer/engineer_pickup
execute positioned ~ ~1.5 ~ as @s[tag=mvm_haul,nbt={SelectedItem:{tag:{mvm_redeploy:1b}}}] at @s run function mvm:classes/engineer/engineer_haul
execute as @s[tag=mvm_haul,nbt=!{SelectedItem:{tag:{mvm_redeploy:1b}}}] at @s run function mvm:classes/engineer/redeploy

scoreboard players set @s mvm_distance 0
execute as @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{mvm_slot2:1b}}}] at @s positioned ~ ~1.5 ~ positioned ^ ^ ^0.2 run function mvm:classes/engineer/wrangler_tracer
execute as @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{mvm_slot2:1b}}}] at @s run function mvm:classes/engineer/wrangler_track
execute as @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{mvm_slot2:1b}}},scores={mvm_useCarrotStick=1..}] at @s run function mvm:classes/engineer/wrangler_fire


execute as @s[scores={mvm_metal=130..}] as @e[type=item,nbt={Item:{id:"minecraft:observer",Count:1b,tag:{mvm_buildingType:1b,mvm_buildingLevel:0b}}}] at @s run function mvm:classes/engineer/spawn_sentry
execute as @s[scores={mvm_metal=100..}] as @e[type=item,nbt={Item:{id:"minecraft:furnace",Count:1b,tag:{mvm_buildingType:2b,mvm_buildingLevel:0b}}}] at @s run function mvm:classes/engineer/spawn_dispenser

#execute as @s[scores={mvm_metal=130..}] as @e[type=item,nbt={Item:{id:"minecraft:observer",Count:1b,tag:{mvm_buildingType:1b}}},nbt=!{Item:{id:"minecraft:observer",Count:1b,tag:{mvm_buildingLevel:0b}}}] at @s run function mvm:classes/engineer/redeploy_sentry

execute as @s[nbt={Inventory:[{id:"minecraft:structure_void",Count:2b}]}] run clear @s structure_void 1


execute as @e[type=armor_stand,tag=mvm_construct] at @s run function mvm:classes/engineer/construct
execute as @e[type=armor_stand,tag=mvm_building,tag=!mvm_construct,tag=!mvm_moving] at @s run function mvm:classes/engineer/buildings
tag @e[type=armor_stand,name="mvm_SentryGun",tag=mvm_wrangled] remove mvm_wrangled