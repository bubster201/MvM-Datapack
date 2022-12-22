#Center row
summon marker ^ ^ ^1 {CustomName:'"mvm_FireParticle"',NoGravity:1b}
scoreboard players add @e[type=marker,name="mvm_FireParticle"] mvm_timer 0
execute as @e[type=marker,name="mvm_FireParticle",scores={mvm_timer=0}] at @s run tp @s ~ ~ ~ facing entity @p[scores={mvm_class=3}] eyes

