execute as @e[team=mvm_enemies,limit=1,sort=nearest] at @s run function mvm:move_to_bomb
tag @e[team=mvm_enemies,distance=..3] add mvm_bombCarrier