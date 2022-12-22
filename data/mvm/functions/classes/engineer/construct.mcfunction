scoreboard players add @s[scores={mvm_constructTime=..99}] mvm_constructTime 1

tp @s ~ ~0.01 ~

tag @s[scores={mvm_constructTime=100..}] remove mvm_construct
data merge entity @s[scores={mvm_constructTime=100..}] {NoGravity:0b}