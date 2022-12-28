execute as @s[name="Bat Scout"] run function mvm:enemies/bat_scout/bat_scout

execute as @e[type=marker,distance=..5,name="mvm_Hitbox"] run scoreboard players operation @s mvm_enemyIdDiff = @s mvm_enemyId
scoreboard players operation @e[type=marker,distance=..5,name="mvm_Hitbox"] mvm_enemyIdDiff -= @s mvm_enemyId

execute as @s[tag=mvm_jarate] run tag @e[type=marker,distance=..5,name="mvm_Hitbox",scores={mvm_enemyIdDiff=0}] add mvm_jarate
execute as @s[tag=mvm_marked] run tag @e[type=marker,distance=..5,name="mvm_Hitbox",scores={mvm_enemyIdDiff=0}] add mvm_marked

execute as @s[tag=!mvm_jarate] run tag @e[type=marker,distance=..5,name="mvm_Hitbox",scores={mvm_enemyIdDiff=0}] remove mvm_jarate
execute as @s[tag=!mvm_marked] run tag @e[type=marker,distance=..5,name="mvm_Hitbox",scores={mvm_enemyIdDiff=0}] remove mvm_marked