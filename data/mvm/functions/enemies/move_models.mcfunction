execute as @e[type=armor_stand,name="mvm_Model"] run scoreboard players operation @s mvm_enemyIdDiff = @s mvm_enemyId
scoreboard players operation @e[type=armor_stand,name="mvm_Model"] mvm_enemyIdDiff -= @s mvm_enemyId

execute as @e[type=armor_stand,name="mvm_Model"] run scoreboard players operation @s mvm_hitboxIdDiff = @s mvm_hitboxId
scoreboard players operation @e[type=armor_stand,name="mvm_Model"] mvm_hitboxIdDiff -= @s mvm_hitboxId

tp @e[type=armor_stand,name="mvm_Model",scores={mvm_enemyIdDiff=0,mvm_hitboxIdDiff=0}] ~ ~-1 ~
data modify entity @e[type=armor_stand,name="mvm_Model",scores={mvm_enemyIdDiff=0,mvm_hitboxIdDiff=0,mvm_hitboxId=30},limit=1] Rotation set from entity @s Rotation
data modify entity @e[type=armor_stand,name="mvm_Model",scores={mvm_enemyIdDiff=0,mvm_hitboxIdDiff=0,mvm_hitboxId=31},limit=1] Rotation set from entity @s Rotation
data modify entity @e[type=armor_stand,name="mvm_Model",scores={mvm_enemyIdDiff=0,mvm_hitboxIdDiff=0,mvm_hitboxId=32},limit=1] Rotation set from entity @s Rotation
data modify entity @e[type=armor_stand,name="mvm_Model",scores={mvm_enemyIdDiff=0,mvm_hitboxIdDiff=0,mvm_hitboxId=33},limit=1] Rotation set from entity @s Rotation