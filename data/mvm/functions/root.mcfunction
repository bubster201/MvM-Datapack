#Create hitboxes
function mvm:read_wave


execute as @e[team=mvm_enemies] at @s run function mvm:hitboxes

execute if score $hitboxes mvm_vars matches 1 as @e[name="mvm_Hitbox",tag=!mvm_headHitbox,tag=!mvm_backHitbox] at @s run particle happy_villager ~ ~ ~ 0.1 0.1 0.1 0 1 force
execute if score $hitboxes mvm_vars matches 1 as @e[name="mvm_Hitbox",tag=mvm_headHitbox] at @s run particle dust 1 0 0 1 ~ ~ ~ 0.1 0.1 0.1 0 1 force
execute if score $hitboxes mvm_vars matches 1 as @e[name="mvm_Hitbox",tag=mvm_backHitbox] at @s run particle dust 1 0 1 1 ~ ~ ~ 0.1 0.1 0.1 0 1 force

execute as @e[type=endermite,name="mvm_createNode"] at @s run function mvm:create_node

execute as @e[type=marker,name="mvm_Node"] at @s if score @s mvm_map = $currentMap mvm_map run function mvm:active_node
execute as @e[type=armor_stand,name="mvm_Bomb"] at @s unless entity @e[tag=mvm_bombCarrier] run function mvm:pull_carrier

execute if score $waveActive mvm_vars matches 1 unless entity @e[team=mvm_enemies] run function mvm:next_wave

execute as @a[team=mvm_players] at @s run function mvm:classes/classes
execute as @e[team=mvm_enemies] at @s run function mvm:enemies/enemies

execute as @e[type=item,nbt={Item:{tag:{mvm_weapon:1b}}}] run function mvm:return_item

function mvm:status_effects

execute as @e[type=marker,name="mvm_Hitbox",scores={mvm_applyDamage=1..}] at @s run function mvm:apply_damage
execute as @e[team=mvm_enemies,scores={mvm_applyDamage=1..}] at @s run function mvm:apply_damage_actual
execute as @e[team=mvm_enemies,scores={mvm_health=-1000000..0}] at @s run function mvm:keel_over

execute as @e[team=mvm_players,scores={mvm_playerDamage=1..}] at @s run function mvm:player_damage
kill @a[team=mvm_players,scores={mvm_health=-1000000..0}]
execute as @a[team=mvm_players,scores={mvm_health=-1000000..0}] run scoreboard players operation @s mvm_health = @s mvm_maxHealth

execute as @e[type=item,name="mvm_Money",nbt={Item:{Count:1b}}] at @s run function mvm:collectable_money
#execute if score $waveActive mvm_vars < $1 mvm_vars run scoreboard players operation @a mvm_money += $waveMoney mvm_money
execute if score $waveActive mvm_vars < $1 mvm_vars run scoreboard players set $waveMoney mvm_money 0
#Condense this in the future
kill @e[type=armor_stand,name="mvm_Stickybomb",scores={mvm_sticky_id=0}]
kill @e[type=armor_stand,name="mvm_Stickybomb",scores={mvm_sticky_id=9..}]
kill @e[type=armor_stand,name="mvm_Stickybomb",scores={mvm_id=0}]

execute as @a[tag=mvm_critBoosted] run item modify entity @s weapon.mainhand mvm:add_crit
execute as @a[tag=!mvm_critBoosted] run item modify entity @s weapon.mainhand mvm:remove_crit


execute if score $tick mvm_timer >= $21 mvm_vars run scoreboard players set $tick mvm_timer 0
scoreboard players add $tick mvm_timer 1

tag @e[tag=mvm_damageCrit] remove mvm_damageCrit
tag @e[tag=mvm_damageMinicrit] remove mvm_damageMinicrit

scoreboard players set @a[tag=mvm_kritz] mvm_critBuffer 20
scoreboard players remove @a[scores={mvm_critBuffer=1..}] mvm_critBuffer 1

tag @a[team=mvm_players] remove mvm_buffed
tag @a[team=mvm_players,scores={mvm_critBuffer=0}] remove mvm_critBoosted
tag @a remove mvm_kritz



kill @e[type=marker,name="mvm_PlayerHitbox"]