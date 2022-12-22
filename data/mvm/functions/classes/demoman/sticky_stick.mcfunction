execute unless block ~0.2 ~ ~ air run tag @s add mvm_stick

execute unless block ~-0.2 ~ ~ air run tag @s add mvm_stick

execute unless block ~ ~0.2 ~ air run tag @s add mvm_stick

execute unless block ~ ~-0.2 ~ air run tag @s add mvm_stick

execute unless block ~ ~ ~0.2 air run tag @s add mvm_stick

execute unless block ~ ~ ~-0.2 air run tag @s add mvm_stick

tp @s[tag=mvm_stick] ~ ~-0.4 ~
data merge entity @s[tag=mvm_stick] {NoGravity:1b}