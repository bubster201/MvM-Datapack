execute as @e[type=marker,distance=..5,name="mvm_Hitbox"] run scoreboard players operation @s mvm_enemyIdDiff = @s mvm_enemyId
scoreboard players operation @e[type=marker,distance=..5,name="mvm_Hitbox"] mvm_enemyIdDiff -= @s mvm_enemyId

execute as @s[name="Bat Scout"] at @s run tp @e[type=marker,name="mvm_Hitbox",limit=1,sort=nearest,scores={mvm_enemyIdDiff=0},tag=mvm_hitbox1] ~ ~0.3 ~
execute as @s[name="Bat Scout"] at @s run tp @e[type=marker,name="mvm_Hitbox",limit=1,sort=nearest,scores={mvm_enemyIdDiff=0},tag=mvm_hitbox2] ~ ~0.9 ~
execute as @s[name="Bat Scout"] at @s run tp @e[type=marker,name="mvm_Hitbox",limit=1,sort=nearest,scores={mvm_enemyIdDiff=0},tag=mvm_hitbox3] ~ ~1.5 ~
execute as @s[name="Bat Scout"] at @s run tp @e[type=marker,name="mvm_Hitbox",limit=1,sort=nearest,scores={mvm_enemyIdDiff=0},tag=mvm_headHitbox] ~ ~1.7 ~
execute as @s[name="Bat Scout"] at @s run tp @e[type=marker,name="mvm_Hitbox",limit=1,sort=nearest,scores={mvm_enemyIdDiff=0},tag=mvm_backHitbox] ^ ^1.1 ^-0.4

execute as @s[name="I HAVE A GUN!!!"] at @s run tp @e[type=marker,name="mvm_Hitbox",limit=1,sort=nearest,scores={mvm_enemyIdDiff=0},tag=mvm_hitbox1] ~ ~0.3 ~
execute as @s[name="I HAVE A GUN!!!"] at @s run tp @e[type=marker,name="mvm_Hitbox",limit=1,sort=nearest,scores={mvm_enemyIdDiff=0},tag=mvm_hitbox2] ~ ~0.9 ~
execute as @s[name="I HAVE A GUN!!!"] at @s run tp @e[type=marker,name="mvm_Hitbox",limit=1,sort=nearest,scores={mvm_enemyIdDiff=0},tag=mvm_hitbox3] ~ ~1.5 ~
execute as @s[name="I HAVE A GUN!!!"] at @s run tp @e[type=marker,name="mvm_Hitbox",limit=1,sort=nearest,scores={mvm_enemyIdDiff=0},tag=mvm_headHitbox] ~ ~1.7 ~
execute as @s[name="I HAVE A GUN!!!"] at @s run tp @e[type=marker,name="mvm_Hitbox",limit=1,sort=nearest,scores={mvm_enemyIdDiff=0},tag=mvm_backHitbox] ^ ^1.1 ^-0.4