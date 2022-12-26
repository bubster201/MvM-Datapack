execute as @a[team=mvm_players] run scoreboard players operation @s mvm_buildingIdDiff = @s mvm_id
scoreboard players operation @a mvm_buildingIdDiff -= @s mvm_id

execute as @s[name="mvm_SentryGun"] run give @p[team=mvm_players,scores={mvm_buildingIdDiff=0}] sponge

kill @s