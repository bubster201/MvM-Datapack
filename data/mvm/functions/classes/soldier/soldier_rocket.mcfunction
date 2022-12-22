scoreboard players set @s mvm_blocksFilled 0
execute store result score @s mvm_blocksFilled run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:structure_void replace minecraft:air
fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:air replace minecraft:structure_void
execute if score @p[scores={mvm_class=2},distance=..2] mvm_id = @s mvm_id run effect give @p[scores={mvm_class=2},distance=..2] resistance 1 3 true

execute as @s[tag=mvm_critBoosted] run particle dust 1 0 0 2 ~ ~ ~ 0 0 0 0 1
execute as @s[tag=mvm_critBoosted] run particle electric_spark ~ ~ ~ 0.2 0.2 0.2 0 10
execute as @s[tag=!mvm_critBoosted] run particle smoke ~ ~ ~ 0 0 0 0 1
execute if entity @e[type=marker,name="mvm_Hitbox",distance=..4] run function mvm:classes/soldier/rocket_explode
execute if score @s mvm_blocksFilled < $27 mvm_vars run function mvm:classes/soldier/rocket_explode