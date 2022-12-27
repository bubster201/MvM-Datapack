kill @e[type=arrow,nbt={Color:11}]
scoreboard players set @s mvm_distance 0

execute as @s run summon marker ~ ~0.3 ~ {CustomName:'"mvm_PlayerHitbox"',NoGravity:1b}
execute as @s run summon marker ~ ~0.9 ~ {CustomName:'"mvm_PlayerHitbox"',NoGravity:1b}
execute as @s run summon marker ~ ~1.5 ~ {CustomName:'"mvm_PlayerHitbox"',NoGravity:1b}
execute as @s run summon marker ~ ~1.7 ~ {CustomName:'"mvm_PlayerHitbox"',NoGravity:1b,Tags:[mvm_pHeadHitbox]}
execute as @s run summon marker ^ ^1.1 ^-0.4 {CustomName:'"mvm_PlayerHitbox"',NoGravity:1b,Tags:[mvm_pBackHitbox]}

execute as @s[nbt={SelectedItem:{tag:{mvm_slot1:1b}}}] run title @s actionbar [{"text":"Ammo: ","color":"red"},{"score":{"name":"@s","objective":"mvm_ammo1"},"color":"yellow"}]
execute as @s[nbt={SelectedItem:{tag:{mvm_slot2:1b}}}] run title @s actionbar [{"text":"Ammo: ","color":"red"},{"score":{"name":"@s","objective":"mvm_ammo2"},"color":"yellow"}]

execute as @s[scores={mvm_class=7}] run function mvm:classes/medic/medic_buff
execute as @s[scores={mvm_class=2}] run function mvm:classes/soldier/soldier_buff

execute as @s[scores={mvm_class=1}] run function mvm:classes/scout/scout
execute as @s[scores={mvm_class=2}] run function mvm:classes/soldier/soldier
execute as @s[scores={mvm_class=3}] run function mvm:classes/pyro/pyro
execute as @s[scores={mvm_class=4}] run function mvm:classes/demoman/demoman
execute as @s[scores={mvm_class=5}] run function mvm:classes/heavy/heavy
execute as @s[scores={mvm_class=6}] run function mvm:classes/engineer/engineer
execute as @s[scores={mvm_class=7}] run function mvm:classes/medic/medic
execute as @s[scores={mvm_class=8}] run function mvm:classes/sniper/sniper
execute as @s[scores={mvm_class=9}] run function mvm:classes/spy/spy

execute as @s[scores={mvm_reload1=2,mvm_ammo1=1..}] run function mvm:classes/refill_ammo1
execute as @s[scores={mvm_reload2=2,mvm_ammo2=1..}] run function mvm:classes/refill_ammo2
execute as @s[scores={mvm_reload3=2}] run function mvm:classes/refill_ammo3

#TODO: hard-code reload exception(s) for throwables (mad milk)

execute if score $tick mvm_timer = $5 mvm_vars as @s[tag=mvm_critBoosted] at @s run playsound minecraft:entity.guardian.attack master @s ~ ~ ~ 2 1
execute if score $tick mvm_timer = $10 mvm_vars as @s[tag=mvm_critBoosted] at @s run playsound minecraft:entity.guardian.attack master @s ~ ~ ~ 2 1
execute if score $tick mvm_timer = $15 mvm_vars as @s[tag=mvm_critBoosted] at @s run playsound minecraft:entity.guardian.attack master @s ~ ~ ~ 2 1
execute if score $tick mvm_timer = $20 mvm_vars as @s[tag=mvm_critBoosted] at @s run playsound minecraft:entity.guardian.attack master @s ~ ~ ~ 2 1


execute if score $tick mvm_timer = $2 mvm_vars if score @s mvm_overheal >= $1 mvm_vars run scoreboard players remove @s mvm_overheal 1

scoreboard players remove @s[scores={mvm_reload1=2..,mvm_ammo1=1..}] mvm_reload1 1
scoreboard players remove @s[scores={mvm_reload2=2..,mvm_ammo2=1..}] mvm_reload2 1
scoreboard players remove @s[scores={mvm_reload3=2..}] mvm_reload3 1

scoreboard players set @s mvm_useCrossbow 0
scoreboard players set @s mvm_useLingeringPotion 0
scoreboard players set @s mvm_crouch 0
scoreboard players set @s mvm_useCarrotStick 0
scoreboard players set @s mvm_useBow 0
scoreboard players set @s mvm_useIronAxe 0
scoreboard players set @s mvm_useNetheriteAxe 0
scoreboard players set @s mvm_useGoatHorn 0
scoreboard players set @s mvm_useIronSword 0
advancement revoke @s only mvm:eat_bread