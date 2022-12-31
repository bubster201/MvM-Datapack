execute as @s[name="Bat Scout"] run function mvm:enemies/bat_scout/bat_scout
execute as @s[name="Giant Rapid Fire Demoman"] run function mvm:enemies/giant_rapid_fire_demoman/giant_rapid_fire_demoman

execute as @e[type=marker,name="mvm_Hitbox"] run scoreboard players operation @s mvm_enemyIdDiff = @s mvm_enemyId
scoreboard players operation @e[type=marker,name="mvm_Hitbox"] mvm_enemyIdDiff -= @s mvm_enemyId

execute as @e[type=slime,name="mvm_BoundingBox"] run scoreboard players operation @s mvm_enemyIdDiff = @s mvm_enemyId
scoreboard players operation @e[type=slime,name="mvm_BoundingBox"] mvm_enemyIdDiff -= @s mvm_enemyId

tp @e[type=slime,name="mvm_BoundingBox",scores={mvm_enemyIdDiff=0}] ~ ~-1 ~

execute as @e[type=armor_stand,name="mvm_EnemyGrenade"] at @s run function mvm:enemies/default/enemy_grenade

execute as @s[tag=mvm_jarate] run tag @e[type=marker,distance=..5,name="mvm_Hitbox",scores={mvm_enemyIdDiff=0}] add mvm_jarate
execute as @s[tag=mvm_marked] run tag @e[type=marker,distance=..5,name="mvm_Hitbox",scores={mvm_enemyIdDiff=0}] add mvm_marked
