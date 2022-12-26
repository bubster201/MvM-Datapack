scoreboard players add @e[team=mvm_enemies,limit=1,sort=nearest] mvm_applyDamage 30
tag @e[team=mvm_enemies,limit=1,sort=nearest,tag=mvm_burning] add mvm_damageCrit
scoreboard players set @e[team=mvm_enemies,limit=1,sort=nearest] mvm_burnTime 0
tag @e[team=mvm_enemies,limit=1,sort=nearest] add mvm_burning