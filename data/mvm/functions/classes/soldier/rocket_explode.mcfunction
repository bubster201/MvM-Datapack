summon creeper ~ ~0.7 ~ {CustomName:'"mvm_RedExplosion"'}
team join mvm_players @e[type=creeper,name="mvm_RedExplosion"]
data merge entity @e[type=creeper,name="mvm_RedExplosion",limit=1,sort=nearest] {Fuse:0s,ExplosionRadius:4}

scoreboard players operation @e[team=mvm_enemies,distance=..5] mvm_damageDealer = @s mvm_id
execute as @s[tag=mvm_buffed] run tag @e[team=mvm_enemies,distance=..5] add mvm_damageMinicrit
execute as @s[tag=mvm_critBoosted] run tag @e[team=mvm_enemies,distance=..5] add mvm_damageCrit
scoreboard players add @e[team=mvm_enemies,distance=..5] mvm_applyDamage 90

kill @s