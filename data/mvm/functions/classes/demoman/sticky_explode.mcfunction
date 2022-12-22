summon creeper ~ ~0.7 ~ {CustomName:'"mvm_RedExplosion"',ExplosionRadius:4}
execute if score @p[scores={mvm_class=4},distance=..3] mvm_id = @s mvm_id run effect give @p[scores={mvm_class=4},distance=..3] resistance 1 3 true
team join mvm_players @e[type=creeper,name="mvm_RedExplosion"]
data merge entity @e[type=creeper,name="mvm_RedExplosion",limit=1,sort=nearest] {Fuse:0s,ExplosionRadius:4}
scoreboard players operation @e[team=mvm_enemies,distance=..4] mvm_damageDealer = @s mvm_id
execute as @s[tag=mvm_critBoosted] run tag @e[team=mvm_enemies,limit=1,sort=nearest] add mvm_damageCrit
execute as @e[team=mvm_enemies,distance=..4] at @s run scoreboard players add @e[team=mvm_enemies,limit=1,sort=nearest] mvm_applyDamage 120
kill @s
