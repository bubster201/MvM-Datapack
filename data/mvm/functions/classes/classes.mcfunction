kill @e[type=arrow,nbt={Color:11}]
scoreboard players set @s mvm_distance 0

execute as @s[nbt={SelectedItem:{tag:{mvm_slot1:1b}}}] run title @s actionbar [{"text":"Ammo: ","color":"red"},{"score":{"name":"@s","objective":"mvm_ammo1"},"color":"yellow"}]
execute as @s[nbt={SelectedItem:{tag:{mvm_slot2:1b}}}] run title @s actionbar [{"text":"Ammo: ","color":"red"},{"score":{"name":"@s","objective":"mvm_ammo2"},"color":"yellow"}]


execute as @s[scores={mvm_class=1}] run function mvm:classes/scout/scout
execute as @s[scores={mvm_class=2}] run function mvm:classes/soldier/soldier
execute as @s[scores={mvm_class=3}] run function mvm:classes/pyro/pyro
execute as @s[scores={mvm_class=4}] run function mvm:classes/demoman/demoman
execute as @s[scores={mvm_class=5}] run function mvm:classes/heavy/heavy
execute as @s[scores={mvm_class=6}] run function mvm:classes/engineer/engineer
execute as @s[scores={mvm_class=7}] run function mvm:classes/medic/medic
execute as @s[scores={mvm_class=8}] run function mvm:classes/sniper/sniper

execute as @s[scores={mvm_reload1=2,mvm_ammo1=1..}] run function mvm:classes/refill_ammo1
execute as @s[scores={mvm_reload2=2,mvm_ammo2=1..}] run function mvm:classes/refill_ammo2
execute as @s[scores={mvm_reload3=2}] run function mvm:classes/refill_ammo3

#TODO: hard-code reload exception(s) for throwables (mad milk)

scoreboard players remove @s[scores={mvm_reload1=2..,mvm_ammo1=1..}] mvm_reload1 1
scoreboard players remove @s[scores={mvm_reload2=2..,mvm_ammo2=1..,mvm_class=2..9}] mvm_reload2 1
scoreboard players remove @s[scores={mvm_reload2=2..,mvm_ammo2=0..,mvm_class=1}] mvm_reload2 1
scoreboard players remove @s[scores={mvm_reload3=2..}] mvm_reload3 1

scoreboard players set @s mvm_useCrossbow 0
scoreboard players set @s mvm_useLingeringPotion 0
scoreboard players set @s mvm_crouch 0
scoreboard players set @s mvm_useCarrotStick 0
scoreboard players set @s mvm_useBow 0
scoreboard players set @s mvm_useIronAxe 0
scoreboard players set @s mvm_useNetheriteAxe 0