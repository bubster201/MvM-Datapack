summon minecraft:item ~ ~2 ~ {Item:{id:"minecraft:lime_carpet",Count:1b},Tags:[mvm_money],CustomName:'"mvm_Money"',PickupDelay:32000s,Invulnerable:1b}
scoreboard players operation @e[type=item,nbt={Item:{id:"minecraft:lime_carpet",Count:1b}},tag=mvm_money,limit=1,sort=nearest] mvm_value = @s mvm_value
scoreboard players operation @e[type=item,nbt={Item:{id:"minecraft:lime_carpet",Count:1b}},tag=mvm_money,limit=1,sort=nearest] mvm_map = @s mvm_map
data modify entity @e[type=item,nbt={Item:{id:"minecraft:lime_carpet",Count:1b}},tag=mvm_money,limit=1,sort=nearest] Item.tag.display.Lore append from entity @s UUID
data merge entity @e[type=item,nbt={Item:{id:"minecraft:lime_carpet",Count:1b}},tag=mvm_money,limit=1,sort=nearest] {Item:{id:"minecraft:green_carpet",Count:1b}}

execute as @e[type=marker,name="mvm_Hitbox"] run scoreboard players operation @s mvm_enemyIdDiff = @s mvm_enemyId
scoreboard players operation @e[type=marker,name="mvm_Hitbox"] mvm_enemyIdDiff -= @s mvm_enemyId

execute as @e[type=armor_stand,name="mvm_Model"] run scoreboard players operation @s mvm_enemyIdDiff = @s mvm_enemyId
scoreboard players operation @e[type=armor_stand,name="mvm_Model"] mvm_enemyIdDiff -= @s mvm_enemyId

execute as @e[type=slime,name="mvm_BoundingBox"] run scoreboard players operation @s mvm_enemyIdDiff = @s mvm_enemyId
scoreboard players operation @e[type=slime,name="mvm_BoundingBox"] mvm_enemyIdDiff -= @s mvm_enemyId

kill @e[type=marker,name="mvm_Hitbox",scores={mvm_enemyIdDiff=0},distance=..20]
kill @e[type=armor_stand,name="mvm_Model",scores={mvm_enemyIdDiff=0},distance=..20]
tp @e[type=slime,name="mvm_BoundingBox",scores={mvm_enemyIdDiff=0},distance=..20] ~ -1000 ~

execute as @s[tag=mvm_giant] run playsound entity.generic.explode master @a ~ ~ ~ 1000 0.5
execute as @s[tag=mvm_giant] run playsound block.amethyst_block.chime master @a ~ ~ ~ 1000 0.5

scoreboard players remove $enemiesLeft mvm_vars 1
execute store result bossbar mvm_wavebar value run scoreboard players get $enemiesLeft mvm_vars

kill @s