summon marker ~ ~ ~ {CustomName:'"mvm_Direction"'}
execute as @e[name="mvm_Direction",limit=1,sort=nearest] positioned 0.0 0.0 0.0 run function mvm:enemies/giant_rapid_fire_demoman/get_motion
summon armor_stand ~ ~ ~ {CustomName:'"mvm_EnemyGrenade"',Invisible:1b,Small:1b,ArmorItems:[{},{},{},{id:"minecraft:blue_bed",Count:1b}],NoGravity:0b,Silent:1b}
execute as @s[tag=mvm_critBoosted] run tag @e[type=armor_stand,name="mvm_EnemyGrenade",limit=1,sort=nearest] add mvm_critBoosted
execute as @e[type=armor_stand,name="mvm_EnemyGrenade",limit=1,sort=nearest] at @s positioned ~ ~-2 ~ run tp @s ~ ~2 ~ facing entity @e[team=mvm_enemies,name="Giant Rapid Fire Demoman",limit=1,sort=nearest]
scoreboard players add @e[type=armor_stand,name="mvm_EnemyGrenade"] mvm_timer 0
data modify entity @e[type=armor_stand,name="mvm_EnemyGrenade",limit=1,sort=nearest] Motion set from storage mvm:temp_motion Motion
