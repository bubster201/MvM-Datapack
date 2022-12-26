#Center row
execute as @s[tag=!mvm_critBoosted] run playsound minecraft:block.fire.ambient master @a ^ ^ ^1 5
execute as @s[tag=mvm_critBoosted] run playsound minecraft:block.fire.ambient master @a ^ ^ ^1 5 2

summon marker ^ ^ ^1 {CustomName:'"mvm_FireParticle"',NoGravity:1b}
execute as @s[tag=mvm_critBoosted] positioned ^ ^ ^1 run tag @e[type=marker,name="mvm_FireParticle",limit=1,sort=nearest] add mvm_critBoosted
scoreboard players add @e[type=marker,name="mvm_FireParticle"] mvm_timer 0
execute as @e[type=marker,name="mvm_FireParticle",scores={mvm_timer=0}] at @s run tp @s ~ ~ ~ facing entity @p[scores={mvm_class=3}] eyes

scoreboard players remove @s mvm_ammo1 1
