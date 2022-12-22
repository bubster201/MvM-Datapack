summon marker ~ ~ ~ {CustomName:'"mvm_Node"',Tags:[mvm_newNode]}
scoreboard players set @e[type=marker,name="mvm_Node",tag=mvm_newNode] mvm_node 1
scoreboard players operation @e[type=marker,name="mvm_Node",tag=mvm_newNode] mvm_vars = $currentMap mvm_vars
execute as @e[type=marker,name="mvm_Node",tag=!mvm_newNode] if score @s mvm_vars = $currentMap mvm_vars run scoreboard players add @e[type=marker,name="mvm_Node",tag=mvm_newNode] mvm_node 1
tag @e[type=marker,name="mvm_Node",tag=mvm_newNode] remove mvm_newNode

kill @s