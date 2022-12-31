#Center row
tag @s add mvm_fired

scoreboard players operation @e[type=arrow,limit=1,sort=nearest,nbt={Color:13107200}] mvm_id = @s mvm_id
execute as @s[tag=mvm_critBoosted] run tag @e[type=arrow,limit=1,sort=nearest,nbt={Color:13107200}] add mvm_critBoosted
tag @e[type=arrow,limit=1,sort=nearest,nbt={Color:13107200}] add mvm_flare 
data modify entity @e[type=arrow,limit=1,sort=nearest,nbt={Color:13107200}] PierceLevel set value 1b

scoreboard players remove @s mvm_ammo2 1
scoreboard players operation @s mvm_reload2 = @s mvm_reloadSpeed2
tag @s remove mvm_fired