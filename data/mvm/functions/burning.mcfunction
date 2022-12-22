particle flame ~ ~1 ~ 0.3 1 0.3 0 1 force
execute as @s[scores={mvm_burnTime=20}] run function mvm:damage/damage_5
execute as @s[scores={mvm_burnTime=40}] run function mvm:damage/damage_5
execute as @s[scores={mvm_burnTime=60}] run function mvm:damage/damage_5
execute as @s[scores={mvm_burnTime=80}] run function mvm:damage/damage_5
execute as @s[scores={mvm_burnTime=100}] run function mvm:damage/damage_5
tag @s[scores={mvm_burnTime=100}] remove mvm_burning
scoreboard players add @s mvm_burnTime 1