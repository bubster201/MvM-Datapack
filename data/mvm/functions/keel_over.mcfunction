summon minecraft:item ~ ~2 ~ {Item:{id:"minecraft:lime_carpet",Count:1b},Tags:[mvm_money],CustomName:'"mvm_Money"',PickupDelay:32000s,Invulnerable:1b}
scoreboard players operation @e[type=item,nbt={Item:{id:"minecraft:lime_carpet",Count:1b}},tag=mvm_money,limit=1,sort=nearest] mvm_value = @s mvm_value
data modify entity @e[type=item,nbt={Item:{id:"minecraft:lime_carpet",Count:1b}},tag=mvm_money,limit=1,sort=nearest] Item.tag.display.Lore append from entity @s UUID
data merge entity @e[type=item,nbt={Item:{id:"minecraft:lime_carpet",Count:1b}},tag=mvm_money,limit=1,sort=nearest] {Item:{id:"minecraft:green_carpet",Count:1b}}

execute as @e[type=marker,distance=..5,name="mvm_Hitbox"] run scoreboard players operation @s mvm_enemyIdDiff = @s mvm_enemyId
scoreboard players operation @e[type=marker,distance=..5,name="mvm_Hitbox"] mvm_enemyIdDiff -= @s mvm_enemyId

kill @e[type=marker,distance=..5,name="mvm_Hitbox",scores={mvm_enemyIdDiff=0}]

kill @s