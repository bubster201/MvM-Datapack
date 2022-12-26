scoreboard players add @a[team=mvm_players,distance=..2] mvm_health 1
execute as @a[team=mvm_players,distance=..2] if score @s mvm_health > @s mvm_maxHealth run scoreboard players operation @s mvm_health = @s mvm_maxHealth
execute if score $tick mvm_timer matches 1 run execute as @a[team=mvm_players,distance=..2] run function mvm:classes/engineer/dispenser_ammo