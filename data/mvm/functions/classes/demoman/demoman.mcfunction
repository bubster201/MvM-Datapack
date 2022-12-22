#execute as @s[scores={mvm_useBow=1..},nbt={SelectedItem:{tag:{slot1:1b}}}] at @s positioned ~ ~1.5 ~ run function mvm:classes/scout/scout_fire1
execute as @s[scores={mvm_useBow=1..,mvm_ammo2=1..},nbt={SelectedItem:{tag:{slot2:1b}}}] at @s run function mvm:classes/demoman/demoman_fire2

execute as @e[type=armor_stand,name="mvm_Stickybomb"] at @s run function mvm:classes/demoman/stickybomb
execute as @e[type=arrow,nbt={Color:22}] at @s run function mvm:classes/demoman/create_sticky
execute as @e[type=item,nbt={Item:{id:"minecraft:bow",Count:1b,tag:{slot2:1b}}}] at @s run function mvm:classes/demoman/detonate_all