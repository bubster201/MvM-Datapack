execute unless block ~ ~ ~ #minecraft:impermeable run scoreboard players add $numEnemies mvm_vars 1
execute as @s at @s unless block ~ ~ ~ glass run tp @s ~1 ~ ~
execute as @s at @s unless block ~ ~ ~ glass run function mvm:get_num_enemies
execute if block ~1 ~ ~ glass store result bossbar mvm_wavebar max run scoreboard players get $numEnemies mvm_vars
execute if block ~1 ~ ~ glass store result bossbar mvm_wavebar value run scoreboard players get $numEnemies mvm_vars
execute if block ~1 ~ ~ glass run scoreboard players operation $enemiesLeft mvm_vars = $numEnemies mvm_vars
bossbar set mvm_wavebar visible true
execute if block ~1 ~ ~ glass run kill @s