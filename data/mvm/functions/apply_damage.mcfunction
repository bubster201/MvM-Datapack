
execute as @s[type=!#mvm:undead] run effect give @s instant_damage 1 0 true
execute as @s[type=#mvm:undead] run effect give @s instant_health 1 0 true

execute as @a[team=mvm_players] run scoreboard players operation @s mvm_damageDealerIdDiff = @s mvm_id
scoreboard players operation @a[team=mvm_players] mvm_damageDealerIdDiff -= @s mvm_damageDealer

scoreboard players operation @s[tag=mvm_marked,tag=!mvm_damageCrit] mvm_applyDamage *= $135 mvm_vars
scoreboard players operation @s[tag=mvm_marked,tag=!mvm_damageCrit] mvm_applyDamage /= $100 mvm_vars

execute as @s[tag=mvm_marked,tag=!mvm_damageCrit] at @s run playsound minecraft:block.anvil.land master @a ~ ~ ~ 1 1.2

scoreboard players operation @s[tag=mvm_damageCrit] mvm_applyDamage *= $3 mvm_vars
execute as @s[tag=mvm_damageCrit] at @s run particle happy_villager ~ ~2.2 ~ 0.3 0 0.3 0 20
execute as @s[tag=mvm_damageCrit] at @s run playsound minecraft:block.anvil.land master @a ~ ~ ~ 1 1.6

scoreboard players operation @p[team=mvm_players,scores={mvm_damageDealerIdDiff=0,mvm_class=2}] mvm_buffBannerDamage += @s mvm_applyDamage

tag @s remove mvm_damageCrit
scoreboard players operation @s mvm_health -= @s mvm_applyDamage
scoreboard players set @s mvm_applyDamage 0