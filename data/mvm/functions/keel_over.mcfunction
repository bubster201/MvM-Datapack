summon minecraft:item ~ ~2 ~ {Item:{id:"minecraft:lime_carpet",Count:1b},Tags:[mvm_money],CustomName:'"mvm_Money"',PickupDelay:32000s,Invulnerable:1b}
scoreboard players operation @e[type=item,nbt={Item:{id:"minecraft:lime_carpet",Count:1b}},tag=mvm_money,limit=1,sort=nearest] mvm_value = @s mvm_value
data merge entity @e[type=item,nbt={Item:{id:"minecraft:lime_carpet",Count:1b}},tag=mvm_money,limit=1,sort=nearest] {Item:{id:"minecraft:green_carpet",Count:1b}}
kill @s