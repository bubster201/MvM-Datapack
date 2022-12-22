tag @p[scores={mvm_class=4}] add mvm_detonator

execute as @e[type=armor_stand,name="mvm_Stickybomb",scores={mvm_timer=18..}] at @s if score @s mvm_id = @p[tag=mvm_detonator] mvm_id run function mvm:classes/demoman/sticky_explode
scoreboard players set @p[tag=mvm_detonator] mvm_demo_stickies 0
#item replace entity @e[tag=mvm_detonator] hotbar.1 with bow{slot2:1b,weapon:1b}

tag @a remove mvm_detonator