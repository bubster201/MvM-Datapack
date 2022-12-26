
execute as @s[tag=!mvm_damageSentry,type=!#mvm:undead] run effect give @s instant_damage 1 0 true
execute as @s[tag=!mvm_damageSentry,type=#mvm:undead] run effect give @s instant_health 1 0 true

execute as @a[team=mvm_players] run scoreboard players operation @s mvm_damageDealerIdDiff = @s mvm_id
scoreboard players operation @a[team=mvm_players] mvm_damageDealerIdDiff -= @s mvm_damageDealer

tag @s[tag=mvm_marked] add mvm_damageMinicrit
tag @s[tag=mvm_jarate] add mvm_damageMinicrit

scoreboard players operation @s[tag=!mvm_damageCrit,tag=mvm_damageMinicrit] mvm_applyDamage *= $135 mvm_vars
scoreboard players operation @s[tag=!mvm_damageCrit,tag=mvm_damageMinicrit] mvm_applyDamage /= $100 mvm_vars

execute as @s[tag=!mvm_damageCrit,tag=mvm_damageMinicrit] at @s run playsound minecraft:block.anvil.land master @a ~ ~ ~ 1 1.2
execute as @s[tag=!mvm_damageCrit,tag=mvm_damageMinicrit] at @s run particle dust 1 0.5 0 1 ~ ~2.2 ~ 0.3 0 0.3 0 20


scoreboard players operation @s[tag=mvm_damageCrit] mvm_applyDamage *= $3 mvm_vars
execute as @s[tag=mvm_damageCrit] at @s run particle happy_villager ~ ~2.2 ~ 0.3 0 0.3 0 20
execute as @s[tag=mvm_damageCrit] at @s run playsound minecraft:block.anvil.land master @a ~ ~ ~ 1 1.6

scoreboard players operation @p[team=mvm_players,scores={mvm_damageDealerIdDiff=0,mvm_class=2},tag=!mvm_buffBanner] mvm_buffBannerDamage += @s mvm_applyDamage

tag @s remove mvm_damageCrit
scoreboard players operation @s mvm_health -= @s mvm_applyDamage
scoreboard players set @s mvm_applyDamage 0