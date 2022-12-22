#Create hitboxes
execute as @e[team=mvm_enemies] at @s run function mvm:hitboxes

execute if score $hitboxes mvm_vars matches 1 as @e[name="mvm_Hitbox",tag=!mvm_headHitbox] at @s run particle happy_villager ~ ~ ~ 0.1 0.1 0.1 0 1 force
execute if score $hitboxes mvm_vars matches 1 as @e[name="mvm_Hitbox",tag=mvm_headHitbox] at @s run particle dust 1 0 0 1 ~ ~ ~ 0.1 0.1 0.1 0 1 force

execute as @e[type=endermite,name="mvm_createNode"] at @s run function mvm:create_node

execute as @e[type=marker,name="mvm_Node"] at @s if score @s mvm_map = $currentMap mvm_map run function mvm:active_node
execute as @e[type=armor_stand,name="mvm_Bomb"] at @s unless entity @e[tag=mvm_bombCarrier] run function mvm:pull_carrier
function mvm:read_wave

execute if score $waveActive mvm_vars matches 1 unless entity @e[team=mvm_enemies] run function mvm:next_wave

execute as @e[type=item,nbt={Item:{tag:{mvm_weapon:1b}}}] run function mvm:return_item

execute as @a[team=mvm_players] at @s run function mvm:classes/classes

function mvm:status_effects

execute as @e[team=mvm_enemies,scores={mvm_applyDamage=1..}] at @s run function mvm:apply_damage
execute as @e[team=mvm_enemies,scores={mvm_health=-1000000..0}] run function mvm:keel_over

#Condense this in the future
kill @e[type=armor_stand,name="mvm_Stickybomb",scores={mvm_sticky_id=0}]
kill @e[type=armor_stand,name="mvm_Stickybomb",scores={mvm_sticky_id=9..}]
kill @e[type=armor_stand,name="mvm_Stickybomb",scores={mvm_id=0}]

execute as @a[tag=mvm_critBoosted] run item modify entity @s weapon.mainhand mvm:add_crit
execute as @a[tag=!mvm_critBoosted] run item modify entity @s weapon.mainhand mvm:remove_crit


tag @e[tag=mvm_damageCrit] remove mvm_damageCrit

kill @e[type=marker,name="mvm_Hitbox"]