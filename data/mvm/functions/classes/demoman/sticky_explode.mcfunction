summon creeper ~ ~0.7 ~ {CustomName:'"mvm_RedExplosion"'}
execute if score @p[scores={mvm_class=4},distance=..3] mvm_id = @s mvm_id run effect give @p[scores={mvm_class=4},distance=..3] resistance 1 3 true
team join mvm_players @e[type=creeper,name="mvm_RedExplosion"]
data merge entity @e[type=creeper,name="mvm_RedExplosion",limit=1,sort=nearest] {Fuse:0s,ExplosionRadius:4}
kill @s