summon creeper ~ ~0.7 ~ {CustomName:'"mvm_RedExplosion"',ExplosionRadius:4}
execute if score @p[scores={mvm_class=4},distance=..5] mvm_id = @s mvm_id run effect give @p[scores={mvm_class=4},distance=..3] resistance 1 3 true
team join mvm_players @e[type=creeper,name="mvm_RedExplosion"]
data merge entity @e[type=creeper,name="mvm_RedExplosion",limit=1,sort=nearest] {Fuse:0s,ExplosionRadius:4}
scoreboard players operation @e[team=mvm_enemies,distance=..5] mvm_damageDealer = @s mvm_id
execute as @s[tag=mvm_critBoosted] run tag @e[team=mvm_enemies,distance=..5] add mvm_damageCrit

execute as @a[team=mvm_players] run scoreboard players operation @s mvm_stickyIdDiff = @s mvm_id
scoreboard players operation @a[team=mvm_players] mvm_stickyIdDiff -= @s mvm_id
execute if entity @p[team=mvm_players,scores={mvm_stickyIdDiff=0},tag=mvm_buffed] run tag @e[team=mvm_enemies,distance=..5] add mvm_damageMinicrit

scoreboard players add @e[team=mvm_enemies,distance=..5] mvm_applyDamage 100
kill @s
