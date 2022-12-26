#Center row
tag @s add mvm_fired

scoreboard players operation @e[type=arrow,limit=1,sort=nearest,nbt={Color:13107201,inGround:0b}] mvm_id = @s mvm_id
execute as @s[tag=mvm_critBoosted] run tag @e[type=arrow,limit=1,sort=nearest,nbt={Color:13107201,inGround:0b}] add mvm_critBoosted

scoreboard players remove @s mvm_ammo1 1
scoreboard players operation @s mvm_reload1 = @s mvm_reloadSpeed1
tag @s remove mvm_fired