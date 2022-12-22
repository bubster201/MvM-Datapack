summon armor_stand ~ ~-0.7 ~ {CustomName:'"mvm_Stickybomb"',Invisible:1b,Small:1b,ArmorItems:[{},{},{},{id:"minecraft:red_concrete",Count:1b}],NoGravity:0b,Silent:1b}
scoreboard players add @e[type=armor_stand,name="mvm_Stickybomb"] mvm_sticky_id 0
scoreboard players operation @e[type=armor_stand,name="mvm_Stickybomb",limit=1,sort=nearest] mvm_sticky_id > @e[type=armor_stand,name="mvm_Stickybomb"] mvm_sticky_id
scoreboard players operation @e[type=armor_stand,name="mvm_Stickybomb",limit=1,sort=nearest] mvm_id = @p[scores={mvm_class=4}] mvm_id
scoreboard players add @e[type=armor_stand,name="mvm_Stickybomb",limit=1,sort=nearest] mvm_sticky_id 1
data modify entity @e[type=armor_stand,name="mvm_Stickybomb",limit=1,sort=nearest] Motion set from entity @s Motion
scoreboard players add @e[type=armor_stand,name="mvm_Stickybomb"] mvm_timer 0
kill @s