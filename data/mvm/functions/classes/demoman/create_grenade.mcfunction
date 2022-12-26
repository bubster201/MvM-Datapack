summon armor_stand ~ ~-0.7 ~ {CustomName:'"mvm_Grenade"',Invisible:1b,Small:1b,ArmorItems:[{},{},{},{id:"minecraft:red_bed",Count:1b}],NoGravity:0b,Silent:1b}
scoreboard players operation @e[type=armor_stand,name="mvm_Grenade",limit=1,sort=nearest] mvm_id = @p[scores={mvm_class=4}] mvm_id
execute as @s[tag=mvm_critBoosted] run tag @e[type=armor_stand,name="mvm_Grenade",limit=1,sort=nearest] add mvm_critBoosted
execute as @e[type=armor_stand,name="mvm_Grenade",limit=1,sort=nearest] at @s run tp @s ~ ~ ~ facing entity @p[team=mvm_players,scores={mvm_class=4}]
data modify entity @e[type=armor_stand,name="mvm_Grenade",limit=1,sort=nearest] Motion set from entity @s Motion
scoreboard players add @e[type=armor_stand,name="mvm_Grenade"] mvm_timer 0
kill @s