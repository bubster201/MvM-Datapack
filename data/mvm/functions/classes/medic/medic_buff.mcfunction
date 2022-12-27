execute as @s[scores={mvm_useCarrotStick=1..},nbt={SelectedItem:{tag:{mvm_slot2:1b}}}] at @s positioned ~ ~1.5 ~ run function mvm:classes/medic/medic_fire2
scoreboard players remove @s[scores={mvm_useCarrotStick=0,mvm_medibeamActive=1..}] mvm_medibeamActive 1

tag @s[tag=mvm_ubercharge,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{mvm_slot2:1b,mvm_weapon:1b,display:{Name:'"The Kritzkreig"'}},Count:1b}}] add mvm_critBoosted
execute if score $tick mvm_timer = $1 mvm_vars run scoreboard players add @s[scores={mvm_ubercharge=..99,mvm_medibeamActive=1..},tag=!mvm_ubercharge] mvm_ubercharge 1
scoreboard players set @s[scores={mvm_ubercharge=101..}] mvm_ubercharge 100
scoreboard players set @s[scores={mvm_ubercharge=-1000..-1}] mvm_ubercharge 0
execute as @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",tag:{mvm_slot2:1b,mvm_weapon:1b,display:{Name:'"The Kritzkreig"'}},Count:1b}},distance=..3] at @s run tag @p[team=mvm_players,scores={mvm_ubercharge=100,mvm_class=7},distance=..3] add mvm_ubercharge
execute if score $tick mvm_timer = $5 mvm_vars run scoreboard players remove @s[scores={mvm_ubercharge=1..},tag=mvm_ubercharge] mvm_ubercharge 3
execute if score $tick mvm_timer = $10 mvm_vars run scoreboard players remove @s[scores={mvm_ubercharge=1..},tag=mvm_ubercharge] mvm_ubercharge 3
execute if score $tick mvm_timer = $15 mvm_vars run scoreboard players remove @s[scores={mvm_ubercharge=1..},tag=mvm_ubercharge] mvm_ubercharge 3
execute if score $tick mvm_timer = $20 mvm_vars run scoreboard players remove @s[scores={mvm_ubercharge=1..},tag=mvm_ubercharge] mvm_ubercharge 3

execute as @s[scores={mvm_ubercharge=0},tag=mvm_ubercharge] at @s run playsound block.beacon.deactivate master @a ~ ~ ~ 5 2
execute as @s[scores={mvm_ubercharge=0},tag=mvm_ubercharge] at @s run playsound minecraft:entity.shulker_bullet.hurt master @a ~ ~ ~ 5 0.5
tag @s[scores={mvm_ubercharge=0}] remove mvm_ubercharge
#tag @s[scores={mvm_ubercharge=0}] remove mvm_critBoosted