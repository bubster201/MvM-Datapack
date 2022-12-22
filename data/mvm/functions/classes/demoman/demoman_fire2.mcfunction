#Center row
tag @s add mvm_fired

execute as @s[scores={mvm_demo_stickies=8..}] run execute as @e[type=armor_stand,name="mvm_Stickybomb",scores={mvm_sticky_id=1}] at @s run function mvm:classes/demoman/sticky_explode
execute as @s[scores={mvm_demo_stickies=8..}] run execute as @e[type=armor_stand,name="mvm_Stickybomb"] at @s run scoreboard players remove @s mvm_sticky_id 1
execute as @s[scores={mvm_demo_stickies=8..}] run scoreboard players set @s mvm_demo_stickies 7

scoreboard players operation @e[type=arrow,limit=1,sort=nearest,nbt={Color:22,inGround:0b}] mvm_id = @s mvm_id
scoreboard players add @s mvm_demo_stickies 1


scoreboard players remove @s mvm_ammo2 1
scoreboard players operation @s mvm_reload2 = @s mvm_reloadSpeed2
tag @s remove mvm_fired