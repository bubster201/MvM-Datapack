summon creeper ~ ~0.7 ~ {CustomName:'"mvm_RedExplosion"'}
team join mvm_players @e[type=creeper,name="mvm_RedExplosion"]
data merge entity @e[type=creeper,name="mvm_RedExplosion",limit=1,sort=nearest] {Fuse:0s,ExplosionRadius:4}

scoreboard players operation @e[type=marker,name="mvm_Hitbox",distance=..4] mvm_damageDealer = @s mvm_id
execute as @e[type=marker,name="mvm_Hitbox",distance=..4] at @s run scoreboard players operation @e[team=mvm_enemies,limit=1,sort=nearest] mvm_damageDealer = @s mvm_damageDealer
execute as @e[type=marker,name="mvm_Hitbox",distance=..4] at @s run scoreboard players set @e[team=mvm_enemies,limit=1,sort=nearest] mvm_applyDamage 90

say booM!

kill @s