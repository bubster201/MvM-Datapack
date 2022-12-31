#Center row
tag @s add mvm_fired

tag @e[type=arrow,limit=1,sort=nearest,nbt={Color:22}] add mvm_rangerBolt
scoreboard players operation @e[type=arrow,limit=1,sort=nearest,nbt={Color:22}] mvm_id = @s mvm_id
data modify entity @e[type=arrow,limit=1,sort=nearest,nbt={Color:22}] PierceLevel set value 1b


scoreboard players remove @s mvm_ammo1 1
scoreboard players operation @s mvm_reload1 = @s mvm_reloadSpeed1
tag @s remove mvm_fired