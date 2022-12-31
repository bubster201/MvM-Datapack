

tag @s[tag=mvm_marked] add mvm_damageMinicrit
tag @s[tag=mvm_jarate] add mvm_damageMinicrit

#scoreboard players operation @s[tag=!mvm_damageCrit,tag=mvm_damageMinicrit] mvm_playerDamage *= $135 mvm_vars
#scoreboard players operation @s[tag=!mvm_damageCrit,tag=mvm_damageMinicrit] mvm_playerDamage /= $100 mvm_vars

#execute as @s[tag=!mvm_damageCrit,tag=mvm_damageMinicrit] at @s run playsound minecraft:block.anvil.land master @a ~ ~ ~ 1 1.2
#execute as @s[tag=!mvm_damageCrit,tag=mvm_damageMinicrit] at @s run particle dust 1 0.5 0 1 ~ ~2.2 ~ 0.3 0 0.3 0 20


#scoreboard players operation @s[tag=mvm_damageCrit] mvm_playerDamage *= $3 mvm_vars
#execute as @s[tag=mvm_damageCrit] at @s run particle happy_villager ~ ~2.2 ~ 0.3 0 0.3 0 20
#execute as @s[tag=mvm_damageCrit] at @s run playsound minecraft:block.anvil.land master @a ~ ~ ~ 1 1.6

#scoreboard players operation @p[team=mvm_players,scores={mvm_damageDealerIdDiff=0,mvm_class=2},tag=!mvm_buffBanner] mvm_buffBannerDamage += @s mvm_playerDamage

#tag @s remove mvm_damageCrit

execute if score @s mvm_playerDamage < @s mvm_overheal run function mvm:damage_overheal_part
execute if score @s mvm_playerDamage > @s mvm_overheal run function mvm:damage_overheal_full

scoreboard players operation @s mvm_health -= @s mvm_playerDamage
scoreboard players set @s mvm_playerDamage 0