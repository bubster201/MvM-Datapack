execute if score @s mvm_health < @s mvm_maxHealth run scoreboard players add @s mvm_health 1
execute if score @s mvm_health >= @s mvm_maxHealth if score @s mvm_overheal < @s mvm_maxOverheal run scoreboard players add @s mvm_overheal 1