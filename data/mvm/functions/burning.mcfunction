particle flame ~ ~1 ~ 0.3 1 0.3 0 1 force
scoreboard players add @s[scores={mvm_burnTime=20}] mvm_applyDamage 5
scoreboard players add @s[scores={mvm_burnTime=40}] mvm_applyDamage 5
scoreboard players add @s[scores={mvm_burnTime=60}] mvm_applyDamage 5
scoreboard players add @s[scores={mvm_burnTime=80}] mvm_applyDamage 5
scoreboard players add @s[scores={mvm_burnTime=100}] mvm_applyDamage 5

tag @s[scores={mvm_burnTime=100}] remove mvm_burning
scoreboard players add @s mvm_burnTime 1