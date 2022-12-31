execute as @e[team=mvm_enemies,distance=..10] run scoreboard players operation @s mvm_enemyIdDiff = @s mvm_enemyId
scoreboard players operation @e[team=mvm_enemies,distance=..10] mvm_enemyIdDiff -= @s mvm_enemyId
scoreboard players operation @e[team=mvm_enemies,scores={mvm_enemyIdDiff=0},limit=1,sort=nearest] mvm_damageDealer = @s mvm_damageDealer
execute as @s[tag=mvm_damageCrit] run tag @e[team=mvm_enemies,scores={mvm_enemyIdDiff=0},limit=1,sort=nearest] add mvm_damageCrit
execute as @s[tag=mvm_damageMinicrit] run tag @e[team=mvm_enemies,scores={mvm_enemyIdDiff=0},limit=1,sort=nearest] add mvm_damageMinicrit
execute as @s[tag=mvm_damageSentry] run tag @e[team=mvm_enemies,scores={mvm_enemyIdDiff=0},limit=1,sort=nearest] add mvm_damageSentry
execute as @s[tag=mvm_marked] run tag @e[team=mvm_enemies,scores={mvm_enemyIdDiff=0},limit=1,sort=nearest] add mvm_marked
scoreboard players operation @e[team=mvm_enemies,scores={mvm_enemyIdDiff=0},limit=1,sort=nearest] mvm_applyDamage = @s mvm_applyDamage
execute as @e[team=mvm_enemies,scores={mvm_enemyIdDiff=0},limit=1,sort=nearest] at @s run function mvm:apply_damage_actual
scoreboard players set @s mvm_applyDamage 0
tag @s remove mvm_damageCrit
tag @s remove mvm_damageMinicrit
tag @s remove mvm_damageSentry
tag @s remove mvm_marked