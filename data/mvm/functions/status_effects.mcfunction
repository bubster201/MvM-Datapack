execute as @e[type=area_effect_cloud,nbt={Color:16777215}] at @s run tag @e[team=mvm_enemies,distance=..3] add mvm_milked
execute as @e[team=mvm_enemies,tag=mvm_milked] at @s run particle dust 1 1 1 1 ~ ~1 ~ 0.5 1 0.5 0 1 force
kill @e[type=area_effect_cloud,nbt={Color:16777215}]

execute as @e[team=mvm_enemies,tag=mvm_burning] at @s run function mvm:burning

execute as @e[team=mvm_enemies,tag=mvm_marked] at @s run particle block skeleton_skull ~ ~3 ~ 0.2 0.2 0.2 0 1